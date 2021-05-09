import 'package:example/documents/state/accessors.dart';
import 'package:example/documents/state/authentication/state.dart';
import 'package:example/documents/state/state.dart';
import 'package:flutter/widgets.dart';
import 'package:fountain/fountain.dart';

import 'authenticating/layout.dart';
import 'enter_credentials/layout.dart';
import 'not_authenticated/layout.dart';

class AuthenticationLayout extends StatelessWidget {
  const AuthenticationLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateProxy<ApplicationInitializedState, AuthenticationState>(
      accessor: authenticationAccessor,
      child: Builder(
        builder: (context) {
          final authenticationType =
              context.select((AuthenticationState state) => state.runtimeType);
          if (authenticationType == AuthenticationStateNotAuthenticated) {
            return NotAuthenticatedLayout();
          }
          if (authenticationType == AuthenticationStateEnterCredentials ||
              authenticationType == AuthenticationStateInvalidCredentials) {
            return EnterCredentialsLayout();
          }
          return AuthenticatingLayout();
        },
      ),
    );
  }
}
