// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  AuthenticationStateNotAuthenticated notAuthenticated() {
    return const AuthenticationStateNotAuthenticated();
  }

  AuthenticationStateEnterCredentials enterCredentials(
      {required FieldState<String, FieldInvalidReason> username,
      required FieldState<String, FieldInvalidReason> password}) {
    return AuthenticationStateEnterCredentials(
      username: username,
      password: password,
    );
  }

  AuthenticationStateInvalidCredentials invalidCredentials(
      {required FieldState<String, FieldInvalidReason> username,
      required FieldState<String, FieldInvalidReason> password,
      required FormInvalidReason reason}) {
    return AuthenticationStateInvalidCredentials(
      username: username,
      password: password,
      reason: reason,
    );
  }

  AuthenticationStateAuthenticating authenticating(
      {required FieldState<String, FieldInvalidReason> username}) {
    return AuthenticationStateAuthenticating(
      username: username,
    );
  }

  AuthenticationStateAuthenticated authenticated(
      {required AuthenticationResult result}) {
    return AuthenticationStateAuthenticated(
      result: result,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)
        enterCredentials,
    required TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)
        invalidCredentials,
    required TResult Function(FieldState<String, FieldInvalidReason> username)
        authenticating,
    required TResult Function(AuthenticationResult result) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)?
        enterCredentials,
    TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)?
        invalidCredentials,
    TResult Function(FieldState<String, FieldInvalidReason> username)?
        authenticating,
    TResult Function(AuthenticationResult result)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationStateNotAuthenticated value)
        notAuthenticated,
    required TResult Function(AuthenticationStateEnterCredentials value)
        enterCredentials,
    required TResult Function(AuthenticationStateInvalidCredentials value)
        invalidCredentials,
    required TResult Function(AuthenticationStateAuthenticating value)
        authenticating,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationStateNotAuthenticated value)?
        notAuthenticated,
    TResult Function(AuthenticationStateEnterCredentials value)?
        enterCredentials,
    TResult Function(AuthenticationStateInvalidCredentials value)?
        invalidCredentials,
    TResult Function(AuthenticationStateAuthenticating value)? authenticating,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class $AuthenticationStateNotAuthenticatedCopyWith<$Res> {
  factory $AuthenticationStateNotAuthenticatedCopyWith(
          AuthenticationStateNotAuthenticated value,
          $Res Function(AuthenticationStateNotAuthenticated) then) =
      _$AuthenticationStateNotAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateNotAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateNotAuthenticatedCopyWith<$Res> {
  _$AuthenticationStateNotAuthenticatedCopyWithImpl(
      AuthenticationStateNotAuthenticated _value,
      $Res Function(AuthenticationStateNotAuthenticated) _then)
      : super(_value, (v) => _then(v as AuthenticationStateNotAuthenticated));

  @override
  AuthenticationStateNotAuthenticated get _value =>
      super._value as AuthenticationStateNotAuthenticated;
}

/// @nodoc

class _$AuthenticationStateNotAuthenticated
    with DiagnosticableTreeMixin
    implements AuthenticationStateNotAuthenticated {
  const _$AuthenticationStateNotAuthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.notAuthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthenticationState.notAuthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationStateNotAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)
        enterCredentials,
    required TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)
        invalidCredentials,
    required TResult Function(FieldState<String, FieldInvalidReason> username)
        authenticating,
    required TResult Function(AuthenticationResult result) authenticated,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)?
        enterCredentials,
    TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)?
        invalidCredentials,
    TResult Function(FieldState<String, FieldInvalidReason> username)?
        authenticating,
    TResult Function(AuthenticationResult result)? authenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationStateNotAuthenticated value)
        notAuthenticated,
    required TResult Function(AuthenticationStateEnterCredentials value)
        enterCredentials,
    required TResult Function(AuthenticationStateInvalidCredentials value)
        invalidCredentials,
    required TResult Function(AuthenticationStateAuthenticating value)
        authenticating,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationStateNotAuthenticated value)?
        notAuthenticated,
    TResult Function(AuthenticationStateEnterCredentials value)?
        enterCredentials,
    TResult Function(AuthenticationStateInvalidCredentials value)?
        invalidCredentials,
    TResult Function(AuthenticationStateAuthenticating value)? authenticating,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStateNotAuthenticated
    implements AuthenticationState {
  const factory AuthenticationStateNotAuthenticated() =
      _$AuthenticationStateNotAuthenticated;
}

/// @nodoc
abstract class $AuthenticationStateEnterCredentialsCopyWith<$Res> {
  factory $AuthenticationStateEnterCredentialsCopyWith(
          AuthenticationStateEnterCredentials value,
          $Res Function(AuthenticationStateEnterCredentials) then) =
      _$AuthenticationStateEnterCredentialsCopyWithImpl<$Res>;
  $Res call(
      {FieldState<String, FieldInvalidReason> username,
      FieldState<String, FieldInvalidReason> password});

  $FieldStateCopyWith<String, FieldInvalidReason, $Res> get username;
  $FieldStateCopyWith<String, FieldInvalidReason, $Res> get password;
}

/// @nodoc
class _$AuthenticationStateEnterCredentialsCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateEnterCredentialsCopyWith<$Res> {
  _$AuthenticationStateEnterCredentialsCopyWithImpl(
      AuthenticationStateEnterCredentials _value,
      $Res Function(AuthenticationStateEnterCredentials) _then)
      : super(_value, (v) => _then(v as AuthenticationStateEnterCredentials));

  @override
  AuthenticationStateEnterCredentials get _value =>
      super._value as AuthenticationStateEnterCredentials;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(AuthenticationStateEnterCredentials(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as FieldState<String, FieldInvalidReason>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FieldState<String, FieldInvalidReason>,
    ));
  }

  @override
  $FieldStateCopyWith<String, FieldInvalidReason, $Res> get username {
    return $FieldStateCopyWith<String, FieldInvalidReason, $Res>(
        _value.username, (value) {
      return _then(_value.copyWith(username: value));
    });
  }

  @override
  $FieldStateCopyWith<String, FieldInvalidReason, $Res> get password {
    return $FieldStateCopyWith<String, FieldInvalidReason, $Res>(
        _value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc

class _$AuthenticationStateEnterCredentials
    with DiagnosticableTreeMixin
    implements AuthenticationStateEnterCredentials {
  const _$AuthenticationStateEnterCredentials(
      {required this.username, required this.password});

  @override
  final FieldState<String, FieldInvalidReason> username;
  @override
  final FieldState<String, FieldInvalidReason> password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.enterCredentials(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.enterCredentials'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationStateEnterCredentials &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $AuthenticationStateEnterCredentialsCopyWith<
          AuthenticationStateEnterCredentials>
      get copyWith => _$AuthenticationStateEnterCredentialsCopyWithImpl<
          AuthenticationStateEnterCredentials>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)
        enterCredentials,
    required TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)
        invalidCredentials,
    required TResult Function(FieldState<String, FieldInvalidReason> username)
        authenticating,
    required TResult Function(AuthenticationResult result) authenticated,
  }) {
    return enterCredentials(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)?
        enterCredentials,
    TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)?
        invalidCredentials,
    TResult Function(FieldState<String, FieldInvalidReason> username)?
        authenticating,
    TResult Function(AuthenticationResult result)? authenticated,
    required TResult orElse(),
  }) {
    if (enterCredentials != null) {
      return enterCredentials(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationStateNotAuthenticated value)
        notAuthenticated,
    required TResult Function(AuthenticationStateEnterCredentials value)
        enterCredentials,
    required TResult Function(AuthenticationStateInvalidCredentials value)
        invalidCredentials,
    required TResult Function(AuthenticationStateAuthenticating value)
        authenticating,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
  }) {
    return enterCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationStateNotAuthenticated value)?
        notAuthenticated,
    TResult Function(AuthenticationStateEnterCredentials value)?
        enterCredentials,
    TResult Function(AuthenticationStateInvalidCredentials value)?
        invalidCredentials,
    TResult Function(AuthenticationStateAuthenticating value)? authenticating,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (enterCredentials != null) {
      return enterCredentials(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStateEnterCredentials
    implements AuthenticationState {
  const factory AuthenticationStateEnterCredentials(
          {required FieldState<String, FieldInvalidReason> username,
          required FieldState<String, FieldInvalidReason> password}) =
      _$AuthenticationStateEnterCredentials;

  FieldState<String, FieldInvalidReason> get username =>
      throw _privateConstructorUsedError;
  FieldState<String, FieldInvalidReason> get password =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationStateEnterCredentialsCopyWith<
          AuthenticationStateEnterCredentials>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateInvalidCredentialsCopyWith<$Res> {
  factory $AuthenticationStateInvalidCredentialsCopyWith(
          AuthenticationStateInvalidCredentials value,
          $Res Function(AuthenticationStateInvalidCredentials) then) =
      _$AuthenticationStateInvalidCredentialsCopyWithImpl<$Res>;
  $Res call(
      {FieldState<String, FieldInvalidReason> username,
      FieldState<String, FieldInvalidReason> password,
      FormInvalidReason reason});

  $FieldStateCopyWith<String, FieldInvalidReason, $Res> get username;
  $FieldStateCopyWith<String, FieldInvalidReason, $Res> get password;
}

/// @nodoc
class _$AuthenticationStateInvalidCredentialsCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateInvalidCredentialsCopyWith<$Res> {
  _$AuthenticationStateInvalidCredentialsCopyWithImpl(
      AuthenticationStateInvalidCredentials _value,
      $Res Function(AuthenticationStateInvalidCredentials) _then)
      : super(_value, (v) => _then(v as AuthenticationStateInvalidCredentials));

  @override
  AuthenticationStateInvalidCredentials get _value =>
      super._value as AuthenticationStateInvalidCredentials;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? reason = freezed,
  }) {
    return _then(AuthenticationStateInvalidCredentials(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as FieldState<String, FieldInvalidReason>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FieldState<String, FieldInvalidReason>,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as FormInvalidReason,
    ));
  }

  @override
  $FieldStateCopyWith<String, FieldInvalidReason, $Res> get username {
    return $FieldStateCopyWith<String, FieldInvalidReason, $Res>(
        _value.username, (value) {
      return _then(_value.copyWith(username: value));
    });
  }

  @override
  $FieldStateCopyWith<String, FieldInvalidReason, $Res> get password {
    return $FieldStateCopyWith<String, FieldInvalidReason, $Res>(
        _value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc

class _$AuthenticationStateInvalidCredentials
    with DiagnosticableTreeMixin
    implements AuthenticationStateInvalidCredentials {
  const _$AuthenticationStateInvalidCredentials(
      {required this.username, required this.password, required this.reason});

  @override
  final FieldState<String, FieldInvalidReason> username;
  @override
  final FieldState<String, FieldInvalidReason> password;
  @override
  final FormInvalidReason reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.invalidCredentials(username: $username, password: $password, reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthenticationState.invalidCredentials'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationStateInvalidCredentials &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  $AuthenticationStateInvalidCredentialsCopyWith<
          AuthenticationStateInvalidCredentials>
      get copyWith => _$AuthenticationStateInvalidCredentialsCopyWithImpl<
          AuthenticationStateInvalidCredentials>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)
        enterCredentials,
    required TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)
        invalidCredentials,
    required TResult Function(FieldState<String, FieldInvalidReason> username)
        authenticating,
    required TResult Function(AuthenticationResult result) authenticated,
  }) {
    return invalidCredentials(username, password, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)?
        enterCredentials,
    TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)?
        invalidCredentials,
    TResult Function(FieldState<String, FieldInvalidReason> username)?
        authenticating,
    TResult Function(AuthenticationResult result)? authenticated,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(username, password, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationStateNotAuthenticated value)
        notAuthenticated,
    required TResult Function(AuthenticationStateEnterCredentials value)
        enterCredentials,
    required TResult Function(AuthenticationStateInvalidCredentials value)
        invalidCredentials,
    required TResult Function(AuthenticationStateAuthenticating value)
        authenticating,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationStateNotAuthenticated value)?
        notAuthenticated,
    TResult Function(AuthenticationStateEnterCredentials value)?
        enterCredentials,
    TResult Function(AuthenticationStateInvalidCredentials value)?
        invalidCredentials,
    TResult Function(AuthenticationStateAuthenticating value)? authenticating,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStateInvalidCredentials
    implements AuthenticationState {
  const factory AuthenticationStateInvalidCredentials(
          {required FieldState<String, FieldInvalidReason> username,
          required FieldState<String, FieldInvalidReason> password,
          required FormInvalidReason reason}) =
      _$AuthenticationStateInvalidCredentials;

  FieldState<String, FieldInvalidReason> get username =>
      throw _privateConstructorUsedError;
  FieldState<String, FieldInvalidReason> get password =>
      throw _privateConstructorUsedError;
  FormInvalidReason get reason => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationStateInvalidCredentialsCopyWith<
          AuthenticationStateInvalidCredentials>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateAuthenticatingCopyWith<$Res> {
  factory $AuthenticationStateAuthenticatingCopyWith(
          AuthenticationStateAuthenticating value,
          $Res Function(AuthenticationStateAuthenticating) then) =
      _$AuthenticationStateAuthenticatingCopyWithImpl<$Res>;
  $Res call({FieldState<String, FieldInvalidReason> username});

  $FieldStateCopyWith<String, FieldInvalidReason, $Res> get username;
}

/// @nodoc
class _$AuthenticationStateAuthenticatingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateAuthenticatingCopyWith<$Res> {
  _$AuthenticationStateAuthenticatingCopyWithImpl(
      AuthenticationStateAuthenticating _value,
      $Res Function(AuthenticationStateAuthenticating) _then)
      : super(_value, (v) => _then(v as AuthenticationStateAuthenticating));

  @override
  AuthenticationStateAuthenticating get _value =>
      super._value as AuthenticationStateAuthenticating;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(AuthenticationStateAuthenticating(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as FieldState<String, FieldInvalidReason>,
    ));
  }

  @override
  $FieldStateCopyWith<String, FieldInvalidReason, $Res> get username {
    return $FieldStateCopyWith<String, FieldInvalidReason, $Res>(
        _value.username, (value) {
      return _then(_value.copyWith(username: value));
    });
  }
}

/// @nodoc

class _$AuthenticationStateAuthenticating
    with DiagnosticableTreeMixin
    implements AuthenticationStateAuthenticating {
  const _$AuthenticationStateAuthenticating({required this.username});

  @override
  final FieldState<String, FieldInvalidReason> username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.authenticating(username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.authenticating'))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationStateAuthenticating &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  $AuthenticationStateAuthenticatingCopyWith<AuthenticationStateAuthenticating>
      get copyWith => _$AuthenticationStateAuthenticatingCopyWithImpl<
          AuthenticationStateAuthenticating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)
        enterCredentials,
    required TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)
        invalidCredentials,
    required TResult Function(FieldState<String, FieldInvalidReason> username)
        authenticating,
    required TResult Function(AuthenticationResult result) authenticated,
  }) {
    return authenticating(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)?
        enterCredentials,
    TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)?
        invalidCredentials,
    TResult Function(FieldState<String, FieldInvalidReason> username)?
        authenticating,
    TResult Function(AuthenticationResult result)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationStateNotAuthenticated value)
        notAuthenticated,
    required TResult Function(AuthenticationStateEnterCredentials value)
        enterCredentials,
    required TResult Function(AuthenticationStateInvalidCredentials value)
        invalidCredentials,
    required TResult Function(AuthenticationStateAuthenticating value)
        authenticating,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationStateNotAuthenticated value)?
        notAuthenticated,
    TResult Function(AuthenticationStateEnterCredentials value)?
        enterCredentials,
    TResult Function(AuthenticationStateInvalidCredentials value)?
        invalidCredentials,
    TResult Function(AuthenticationStateAuthenticating value)? authenticating,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStateAuthenticating
    implements AuthenticationState {
  const factory AuthenticationStateAuthenticating(
          {required FieldState<String, FieldInvalidReason> username}) =
      _$AuthenticationStateAuthenticating;

  FieldState<String, FieldInvalidReason> get username =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationStateAuthenticatingCopyWith<AuthenticationStateAuthenticating>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateAuthenticatedCopyWith<$Res> {
  factory $AuthenticationStateAuthenticatedCopyWith(
          AuthenticationStateAuthenticated value,
          $Res Function(AuthenticationStateAuthenticated) then) =
      _$AuthenticationStateAuthenticatedCopyWithImpl<$Res>;
  $Res call({AuthenticationResult result});
}

/// @nodoc
class _$AuthenticationStateAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateAuthenticatedCopyWith<$Res> {
  _$AuthenticationStateAuthenticatedCopyWithImpl(
      AuthenticationStateAuthenticated _value,
      $Res Function(AuthenticationStateAuthenticated) _then)
      : super(_value, (v) => _then(v as AuthenticationStateAuthenticated));

  @override
  AuthenticationStateAuthenticated get _value =>
      super._value as AuthenticationStateAuthenticated;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(AuthenticationStateAuthenticated(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AuthenticationResult,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateAuthenticated
    with DiagnosticableTreeMixin
    implements AuthenticationStateAuthenticated {
  const _$AuthenticationStateAuthenticated({required this.result});

  @override
  final AuthenticationResult result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.authenticated(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.authenticated'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationStateAuthenticated &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $AuthenticationStateAuthenticatedCopyWith<AuthenticationStateAuthenticated>
      get copyWith => _$AuthenticationStateAuthenticatedCopyWithImpl<
          AuthenticationStateAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)
        enterCredentials,
    required TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)
        invalidCredentials,
    required TResult Function(FieldState<String, FieldInvalidReason> username)
        authenticating,
    required TResult Function(AuthenticationResult result) authenticated,
  }) {
    return authenticated(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password)?
        enterCredentials,
    TResult Function(
            FieldState<String, FieldInvalidReason> username,
            FieldState<String, FieldInvalidReason> password,
            FormInvalidReason reason)?
        invalidCredentials,
    TResult Function(FieldState<String, FieldInvalidReason> username)?
        authenticating,
    TResult Function(AuthenticationResult result)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationStateNotAuthenticated value)
        notAuthenticated,
    required TResult Function(AuthenticationStateEnterCredentials value)
        enterCredentials,
    required TResult Function(AuthenticationStateInvalidCredentials value)
        invalidCredentials,
    required TResult Function(AuthenticationStateAuthenticating value)
        authenticating,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationStateNotAuthenticated value)?
        notAuthenticated,
    TResult Function(AuthenticationStateEnterCredentials value)?
        enterCredentials,
    TResult Function(AuthenticationStateInvalidCredentials value)?
        invalidCredentials,
    TResult Function(AuthenticationStateAuthenticating value)? authenticating,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStateAuthenticated implements AuthenticationState {
  const factory AuthenticationStateAuthenticated(
          {required AuthenticationResult result}) =
      _$AuthenticationStateAuthenticated;

  AuthenticationResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationStateAuthenticatedCopyWith<AuthenticationStateAuthenticated>
      get copyWith => throw _privateConstructorUsedError;
}
