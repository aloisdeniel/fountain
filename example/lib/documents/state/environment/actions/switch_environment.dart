import 'package:example/documents/state/environment/state.dart';
import 'package:example/documents/state/state.dart';
import 'package:fountain/fountain.dart';

/// Change the environment used by the application.
///
/// This action can be dispatched only when not already authenticated.
class SwitchEnvironmentAction extends Action<ApplicationState> {
  const SwitchEnvironmentAction.mock() : this.environment = Environment.mock;

  const SwitchEnvironmentAction.production()
      : this.environment = Environment.production;

  final Environment environment;

  @override
  Stream<Updater<ApplicationState>> call(
    Context<ApplicationState> context,
  ) async* {
    yield (state) => state.maybeMap(
          initialized: (state) => state.copyWith(
            environment: state.environment.copyWith(
              environment: environment,
            ),
          ),
          orElse: throwNotExecutable(),
        );
  }

  @override
  bool canExecute(ApplicationState state) {
    return state.maybeMap(
      initialized: (state) => true,
      orElse: () => false,
    );
  }

  @override
  String toString() => 'StartAuthentication';
}
