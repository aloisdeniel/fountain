import 'package:example/documents/state/authentication/state.dart';
import 'package:example/documents/state/document/state.dart';
import 'package:example/documents/state/documents/state.dart';
import 'package:example/documents/state/state.dart';
import 'package:fountain/fountain.dart';

final authenticationAccessor =
    ProxyAccessor<ApplicationInitializedState, AuthenticationState>(
  getter: (state) => state.map(
    notAuthenticated: (notAuthenticated) => notAuthenticated.authentication,
    authenticated: (authenticated) => authenticated.authentication,
  ),
  setter: (state, child) => child.maybeMap(
    authenticated: (childAuthenticated) => state.map(
      notAuthenticated: (parentNotNotAuthenticated) =>
          ApplicationInitializedState.authenticated(
        authentication: childAuthenticated,
        documents: DocumentsState.notLoaded(),
        openedDocument: DocumentState.none(),
      ),
      authenticated: (parentAuthenticated) => parentAuthenticated.copyWith(
        authentication: childAuthenticated,
      ),
    ),
    orElse: () => state.map(
      notAuthenticated: (parentNotAuthenticated) =>
          parentNotAuthenticated.copyWith(
        authentication: child,
      ),
      authenticated: (parentAuthenticated) =>
          ApplicationInitializedState.notAuthenticated(
        authentication: child,
      ),
    ),
  ),
);
