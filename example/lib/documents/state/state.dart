import 'package:example/documents/services/api.dart';
import 'package:example/documents/state/authentication/state.dart';
import 'package:example/documents/state/documents/state.dart';
import 'package:example/documents/state/environment/state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'document/state.dart';

part 'state.freezed.dart';

@freezed
class ApplicationState with _$ApplicationState {
  /// The application is currently being bootstrapped.
  const factory ApplicationState.notInitialized() =
      ApplicationStateNotInitialized;

  /// The application is currently being bootstrapped.
  const factory ApplicationState.initializing() = ApplicationStateInitializing;

  /// The user is not logged.
  const factory ApplicationState.initialized({
    required EnvironmentState environment,
    required ApplicationInitializedState initialized,
  }) = ApplicationStateInitialized;
}

@freezed
class ApplicationInitializedState with _$ApplicationInitializedState {
  const ApplicationInitializedState._();

  /// The user is not logged.
  const factory ApplicationInitializedState.notAuthenticated({
    required AuthenticationState authentication,
  }) = ApplicationInitializedStateNotAuthenticated;

  /// The user is logged in.
  const factory ApplicationInitializedState.authenticated({
    required AuthenticationStateAuthenticated authentication,
    required DocumentsState documents,
    required DocumentState openedDocument,
  }) = ApplicationInitializedStateAuthenticated;

  JwtToken tryGetToken() => maybeMap(
        orElse: () =>
            throw Exception('Application must be authenticated to acces token'),
        authenticated: (authenticated) =>
            authenticated.authentication.result.token,
      );
}
