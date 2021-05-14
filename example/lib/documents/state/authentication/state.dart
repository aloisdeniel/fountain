import 'package:example/documents/services/api.dart';
import 'package:example/documents/state/form/state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.notAuthenticated() =
      AuthenticationStateNotAuthenticated;

  const factory AuthenticationState.enterCredentials({
    required FieldState<String, FieldInvalidReason> username,
    required FieldState<String, FieldInvalidReason> password,
  }) = AuthenticationStateEnterCredentials;

  const factory AuthenticationState.invalidCredentials({
    required FieldState<String, FieldInvalidReason> username,
    required FieldState<String, FieldInvalidReason> password,
    required FormInvalidReason reason,
  }) = AuthenticationStateInvalidCredentials;

  const factory AuthenticationState.authenticating({
    required FieldState<String, FieldInvalidReason> username,
  }) = AuthenticationStateAuthenticating;

  const factory AuthenticationState.authenticated({
    required AuthenticationResult result,
  }) = AuthenticationStateAuthenticated;
}
