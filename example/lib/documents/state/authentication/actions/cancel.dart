import 'package:example/documents/state/authentication/state.dart';
import 'package:fountain/fountain.dart';

/// Cancels the current authentication
class CancelAuthenticationAction extends Action<AuthenticationState> {
  const CancelAuthenticationAction();

  @override
  Stream<Updater<AuthenticationState>> call(
    Context<AuthenticationState> context,
  ) async* {
    yield (state) => AuthenticationState.notAuthenticated();
  }

  @override
  bool canExecute(AuthenticationState state) {
    return state.maybeMap(
      notAuthenticated: (state) => false,
      orElse: () => true,
    );
  }

  @override
  String toString() => 'StartAuthentication';
}
