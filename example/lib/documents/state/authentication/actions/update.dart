import 'package:example/documents/state/authentication/state.dart';
import 'package:example/documents/state/form/state.dart';
import 'package:fountain/fountain.dart';

/// Update the current credentials.
class UpdateCredentialsAction extends Action<AuthenticationState> {
  const UpdateCredentialsAction({
    this.username,
    this.password,
  });

  final String? username;
  final String? password;

  @override
  Stream<Updater<AuthenticationState>> call(
    Context<AuthenticationState> context,
  ) async* {
    if (username != null || password != null) {
      yield (state) => state.maybeMap(
            enterCredentials: (enterCredentials) =>
                AuthenticationState.enterCredentials(
              username: _validateUsername(enterCredentials.username),
              password: _validatePassword(enterCredentials.password),
            ),
            invalidCredentials: (invalidCredentials) =>
                AuthenticationState.enterCredentials(
              username: _validateUsername(invalidCredentials.username),
              password: _validatePassword(invalidCredentials.password),
            ),
            orElse: () => throwNotExecutable(),
          );
    }
  }

  @override
  bool canExecute(AuthenticationState state) {
    return state.maybeMap(
      enterCredentials: (auth) => true,
      invalidCredentials: (auth) => true,
      orElse: () => false,
    );
  }

  @override
  String toString() => 'UpdateCredentials($username, $password)';

  FieldState<String, FieldInvalidReason> _validateUsername(
      FieldState<String, FieldInvalidReason> previous) {
    final username = this.username;
    if (username == null) return previous;
    if (username.isEmpty)
      return FieldState<String, FieldInvalidReason>.notValid(
        value: username,
        reason: FieldInvalidReason.empty,
      );
    return FieldState<String, FieldInvalidReason>.valid(username);
  }

  FieldState<String, FieldInvalidReason> _validatePassword(
      FieldState<String, FieldInvalidReason> previous) {
    final password = this.password;
    if (password == null) return previous;
    if (password.isEmpty)
      return FieldState<String, FieldInvalidReason>.notValid(
        value: password,
        reason: FieldInvalidReason.empty,
      );
    return FieldState<String, FieldInvalidReason>.valid(password);
  }
}
