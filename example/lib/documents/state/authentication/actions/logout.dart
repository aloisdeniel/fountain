import 'package:example/documents/services/api.dart';
import 'package:example/documents/state/authentication/state.dart';
import 'package:fountain/fountain.dart';

class LogoutAction extends Action<AuthenticationState> {
  const LogoutAction();

  @override
  Stream<Updater<AuthenticationState>> call(
    Context<AuthenticationState> context,
  ) {
    return context.state.maybeMap(
      authenticated: (authenticated) async* {
        final service = context.services.create<AuthenticationApi>();
        await service.logout(
          authenticated.result.token,
        );
        yield (state) => AuthenticationState.notAuthenticated();
      },
      orElse: () => throwNotExecutable(),
    );
  }

  @override
  bool canExecute(AuthenticationState state) {
    return state.maybeMap(
      authenticated: (authenticated) => true,
      orElse: () => false,
    );
  }

  @override
  String toString() => 'ValidateAuthentication';
}
