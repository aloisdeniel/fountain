import 'package:example/documents/services/api.dart';
import 'package:example/documents/state/authentication/state.dart';
import 'package:example/documents/state/documents/actions/refresh.dart';
import 'package:example/documents/state/form/state.dart';
import 'package:fountain/fountain.dart';

class ValidateAuthenticationAction
    extends ApplicationAction<AuthenticationState> {
  const ValidateAuthenticationAction();

  Stream<ApplicationStateUpdater<AuthenticationState>> _notValid(
    AuthenticationStateEnterCredentials enterCredentials,
  ) async* {
    yield (state) => AuthenticationState.invalidCredentials(
          username: enterCredentials.username,
          password: enterCredentials.password,
          reason: FormInvalidReason.invalidFields,
        );
  }

  Stream<ApplicationStateUpdater<AuthenticationState>> _authenticate(
    ApplicationContext<AuthenticationState> context,
    AuthenticationStateEnterCredentials enterCredentials,
  ) async* {
    yield (state) => AuthenticationState.authenticating(
          username: enterCredentials.username,
        );
    try {
      final service = context.services.create<AuthenticationApi>();
      final result = await service.login(
        enterCredentials.username.maybeValue!,
        enterCredentials.password.maybeValue!,
      );
      yield (state) => AuthenticationStateAuthenticated(
            result: result,
          );

      // Update documents when authenticated
      context.dispatch(RefreshDocumentsAction());
    } catch (e) {
      // TODO
    }
  }

  @override
  Stream<ApplicationStateUpdater<AuthenticationState>> call(
    ApplicationContext<AuthenticationState> context,
  ) {
    return context.state.maybeMap(
      enterCredentials: (enterCredentials) {
        if (!enterCredentials.username.isValid ||
            !enterCredentials.password.isValid) {
          return _notValid(enterCredentials);
        } else {
          return _authenticate(context, enterCredentials);
        }
      },
      orElse: () => throwNotExecutable(),
    );
  }

  @override
  bool canExecute(AuthenticationState state) {
    return state.maybeMap(
      enterCredentials: (enterCredentials) => true,
      orElse: () => false,
    );
  }

  @override
  String toString() => 'ValidateAuthentication';
}
