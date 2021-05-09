import 'package:example/documents/state/environment/state.dart';
import 'package:example/documents/state/state.dart';
import 'package:fountain/fountain.dart';

class UpdateFeatureFlagsAction extends ApplicationAction<ApplicationState> {
  const UpdateFeatureFlagsAction(this.features);

  final FeatureFlags features;

  @override
  Stream<ApplicationStateUpdater<ApplicationState>> call(
    ApplicationContext<ApplicationState> context,
  ) async* {
    yield (state) => state.maybeMap(
          initialized: (state) => state.copyWith(
            environment: state.environment.copyWith(
              features: features,
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
