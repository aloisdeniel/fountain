import 'package:example/documents/state/authentication/state.dart';
import 'package:example/documents/state/form/state.dart';
import 'package:fountain/fountain.dart';

/// If not authenticated, and no authentication process started, then starts the authentication process.
class StartAuthenticationAction extends Action<AuthenticationState> {
  const StartAuthenticationAction();

  @override
  Stream<Updater<AuthenticationState>> call(
    Context<AuthenticationState> context,
  ) async* {
    yield (state) => state.maybeMap(
          notAuthenticated: (_) => AuthenticationState.enterCredentials(
            username: FieldState<String, FieldInvalidReason>.notSpecified(),
            password: FieldState<String, FieldInvalidReason>.notSpecified(),
          ),
          orElse: () => throwNotExecutable(),
        );
  }

  @override
  bool canExecute(AuthenticationState state) {
    return state.maybeMap(
      notAuthenticated: (_) => true,
      orElse: () => false,
    );
  }

  @override
  String toString() => 'StartAuthentication';
}
