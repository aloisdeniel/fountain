import 'dart:io';

import 'package:example/documents/state/authentication/state.dart';
import 'package:example/documents/state/environment/state.dart';
import 'package:example/documents/state/state.dart';
import 'package:flutter/foundation.dart';
import 'package:fountain/fountain.dart';
import 'package:device_info/device_info.dart';
import 'package:package_info/package_info.dart';

class InitializeEnvironmentAction extends Action<ApplicationState> {
  const InitializeEnvironmentAction.mock()
      : this.environment = Environment.mock;

  const InitializeEnvironmentAction.production()
      : this.environment = Environment.production;

  final Environment environment;

  @override
  Stream<Updater<ApplicationState>> call(
    Context<ApplicationState> context,
  ) async* {
    // From package info
    final packageInfo = await PackageInfo.fromPlatform();
    final versionName = packageInfo.version;
    final buildNumber = packageInfo.buildNumber;

    // From device info
    String deviceName, deviceModel;
    final deviceInfo = DeviceInfoPlugin();
    if (!kIsWeb && Platform.isAndroid) {
      final info = await deviceInfo.androidInfo;
      deviceName = info.id;
      deviceModel = 'Android ${info.model}';
    } else if (!kIsWeb && Platform.isIOS) {
      final info = await deviceInfo.iosInfo;
      deviceName = info.identifierForVendor;
      deviceModel = 'iOS ${info.utsname.machine}';
    } else {
      deviceName = 'Unknown';
      deviceModel = 'Unknown';
    }

    yield (state) => state.maybeMap(
          notInitialized: (state) => ApplicationState.initialized(
            environment: EnvironmentState(
              versionName: versionName,
              buildNumber: buildNumber,
              deviceModel: deviceModel,
              deviceName: deviceName,
              environment: environment,
              features: FeatureFlags(
                example: ExampleFeatureFlag.modeA(),
              ),
            ),
            initialized: ApplicationInitializedState.notAuthenticated(
              authentication: AuthenticationState.notAuthenticated(),
            ),
          ),
          initialized: (initialized) {
            return initialized.copyWith(
              environment: initialized.environment.copyWith(
                versionName: versionName,
                buildNumber: buildNumber,
                deviceModel: deviceModel,
                deviceName: deviceName,
              ),
            );
          },
          orElse: () => throwNotExecutable(),
        );
  }

  @override
  bool canExecute(ApplicationState state) {
    return state.maybeMap(
      notInitialized: (notInitialized) => true,
      initialized: (initialized) => true,
      orElse: () => false,
    );
  }

  @override
  String toString() => 'StartAuthentication';
}
