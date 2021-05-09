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
class _$ApplicationStateTearOff {
  const _$ApplicationStateTearOff();

  ApplicationStateNotInitialized notInitialized() {
    return const ApplicationStateNotInitialized();
  }

  ApplicationStateInitializing initializing() {
    return const ApplicationStateInitializing();
  }

  ApplicationStateInitialized initialized(
      {required EnvironmentState environment,
      required ApplicationInitializedState initialized}) {
    return ApplicationStateInitialized(
      environment: environment,
      initialized: initialized,
    );
  }
}

/// @nodoc
const $ApplicationState = _$ApplicationStateTearOff();

/// @nodoc
mixin _$ApplicationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() initializing,
    required TResult Function(EnvironmentState environment,
            ApplicationInitializedState initialized)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? initializing,
    TResult Function(EnvironmentState environment,
            ApplicationInitializedState initialized)?
        initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationStateNotInitialized value)
        notInitialized,
    required TResult Function(ApplicationStateInitializing value) initializing,
    required TResult Function(ApplicationStateInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationStateNotInitialized value)? notInitialized,
    TResult Function(ApplicationStateInitializing value)? initializing,
    TResult Function(ApplicationStateInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  final ApplicationState _value;
  // ignore: unused_field
  final $Res Function(ApplicationState) _then;
}

/// @nodoc
abstract class $ApplicationStateNotInitializedCopyWith<$Res> {
  factory $ApplicationStateNotInitializedCopyWith(
          ApplicationStateNotInitialized value,
          $Res Function(ApplicationStateNotInitialized) then) =
      _$ApplicationStateNotInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApplicationStateNotInitializedCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements $ApplicationStateNotInitializedCopyWith<$Res> {
  _$ApplicationStateNotInitializedCopyWithImpl(
      ApplicationStateNotInitialized _value,
      $Res Function(ApplicationStateNotInitialized) _then)
      : super(_value, (v) => _then(v as ApplicationStateNotInitialized));

  @override
  ApplicationStateNotInitialized get _value =>
      super._value as ApplicationStateNotInitialized;
}

/// @nodoc

class _$ApplicationStateNotInitialized
    with DiagnosticableTreeMixin
    implements ApplicationStateNotInitialized {
  const _$ApplicationStateNotInitialized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationState.notInitialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApplicationState.notInitialized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ApplicationStateNotInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() initializing,
    required TResult Function(EnvironmentState environment,
            ApplicationInitializedState initialized)
        initialized,
  }) {
    return notInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? initializing,
    TResult Function(EnvironmentState environment,
            ApplicationInitializedState initialized)?
        initialized,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationStateNotInitialized value)
        notInitialized,
    required TResult Function(ApplicationStateInitializing value) initializing,
    required TResult Function(ApplicationStateInitialized value) initialized,
  }) {
    return notInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationStateNotInitialized value)? notInitialized,
    TResult Function(ApplicationStateInitializing value)? initializing,
    TResult Function(ApplicationStateInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized(this);
    }
    return orElse();
  }
}

abstract class ApplicationStateNotInitialized implements ApplicationState {
  const factory ApplicationStateNotInitialized() =
      _$ApplicationStateNotInitialized;
}

/// @nodoc
abstract class $ApplicationStateInitializingCopyWith<$Res> {
  factory $ApplicationStateInitializingCopyWith(
          ApplicationStateInitializing value,
          $Res Function(ApplicationStateInitializing) then) =
      _$ApplicationStateInitializingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApplicationStateInitializingCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements $ApplicationStateInitializingCopyWith<$Res> {
  _$ApplicationStateInitializingCopyWithImpl(
      ApplicationStateInitializing _value,
      $Res Function(ApplicationStateInitializing) _then)
      : super(_value, (v) => _then(v as ApplicationStateInitializing));

  @override
  ApplicationStateInitializing get _value =>
      super._value as ApplicationStateInitializing;
}

/// @nodoc

class _$ApplicationStateInitializing
    with DiagnosticableTreeMixin
    implements ApplicationStateInitializing {
  const _$ApplicationStateInitializing();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationState.initializing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApplicationState.initializing'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ApplicationStateInitializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() initializing,
    required TResult Function(EnvironmentState environment,
            ApplicationInitializedState initialized)
        initialized,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? initializing,
    TResult Function(EnvironmentState environment,
            ApplicationInitializedState initialized)?
        initialized,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationStateNotInitialized value)
        notInitialized,
    required TResult Function(ApplicationStateInitializing value) initializing,
    required TResult Function(ApplicationStateInitialized value) initialized,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationStateNotInitialized value)? notInitialized,
    TResult Function(ApplicationStateInitializing value)? initializing,
    TResult Function(ApplicationStateInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class ApplicationStateInitializing implements ApplicationState {
  const factory ApplicationStateInitializing() = _$ApplicationStateInitializing;
}

/// @nodoc
abstract class $ApplicationStateInitializedCopyWith<$Res> {
  factory $ApplicationStateInitializedCopyWith(
          ApplicationStateInitialized value,
          $Res Function(ApplicationStateInitialized) then) =
      _$ApplicationStateInitializedCopyWithImpl<$Res>;
  $Res call(
      {EnvironmentState environment, ApplicationInitializedState initialized});

  $EnvironmentStateCopyWith<$Res> get environment;
  $ApplicationInitializedStateCopyWith<$Res> get initialized;
}

/// @nodoc
class _$ApplicationStateInitializedCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements $ApplicationStateInitializedCopyWith<$Res> {
  _$ApplicationStateInitializedCopyWithImpl(ApplicationStateInitialized _value,
      $Res Function(ApplicationStateInitialized) _then)
      : super(_value, (v) => _then(v as ApplicationStateInitialized));

  @override
  ApplicationStateInitialized get _value =>
      super._value as ApplicationStateInitialized;

  @override
  $Res call({
    Object? environment = freezed,
    Object? initialized = freezed,
  }) {
    return _then(ApplicationStateInitialized(
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as EnvironmentState,
      initialized: initialized == freezed
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as ApplicationInitializedState,
    ));
  }

  @override
  $EnvironmentStateCopyWith<$Res> get environment {
    return $EnvironmentStateCopyWith<$Res>(_value.environment, (value) {
      return _then(_value.copyWith(environment: value));
    });
  }

  @override
  $ApplicationInitializedStateCopyWith<$Res> get initialized {
    return $ApplicationInitializedStateCopyWith<$Res>(_value.initialized,
        (value) {
      return _then(_value.copyWith(initialized: value));
    });
  }
}

/// @nodoc

class _$ApplicationStateInitialized
    with DiagnosticableTreeMixin
    implements ApplicationStateInitialized {
  const _$ApplicationStateInitialized(
      {required this.environment, required this.initialized});

  @override
  final EnvironmentState environment;
  @override
  final ApplicationInitializedState initialized;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationState.initialized(environment: $environment, initialized: $initialized)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApplicationState.initialized'))
      ..add(DiagnosticsProperty('environment', environment))
      ..add(DiagnosticsProperty('initialized', initialized));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationStateInitialized &&
            (identical(other.environment, environment) ||
                const DeepCollectionEquality()
                    .equals(other.environment, environment)) &&
            (identical(other.initialized, initialized) ||
                const DeepCollectionEquality()
                    .equals(other.initialized, initialized)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(environment) ^
      const DeepCollectionEquality().hash(initialized);

  @JsonKey(ignore: true)
  @override
  $ApplicationStateInitializedCopyWith<ApplicationStateInitialized>
      get copyWith => _$ApplicationStateInitializedCopyWithImpl<
          ApplicationStateInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() initializing,
    required TResult Function(EnvironmentState environment,
            ApplicationInitializedState initialized)
        initialized,
  }) {
    return initialized(environment, this.initialized);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? initializing,
    TResult Function(EnvironmentState environment,
            ApplicationInitializedState initialized)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(environment, this.initialized);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationStateNotInitialized value)
        notInitialized,
    required TResult Function(ApplicationStateInitializing value) initializing,
    required TResult Function(ApplicationStateInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationStateNotInitialized value)? notInitialized,
    TResult Function(ApplicationStateInitializing value)? initializing,
    TResult Function(ApplicationStateInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class ApplicationStateInitialized implements ApplicationState {
  const factory ApplicationStateInitialized(
          {required EnvironmentState environment,
          required ApplicationInitializedState initialized}) =
      _$ApplicationStateInitialized;

  EnvironmentState get environment => throw _privateConstructorUsedError;
  ApplicationInitializedState get initialized =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationStateInitializedCopyWith<ApplicationStateInitialized>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ApplicationInitializedStateTearOff {
  const _$ApplicationInitializedStateTearOff();

  ApplicationInitializedStateNotAuthenticated notAuthenticated(
      {required AuthenticationState authentication}) {
    return ApplicationInitializedStateNotAuthenticated(
      authentication: authentication,
    );
  }

  ApplicationInitializedStateAuthenticated authenticated(
      {required AuthenticationStateAuthenticated authentication,
      required DocumentsState documents,
      required DocumentState openedDocument}) {
    return ApplicationInitializedStateAuthenticated(
      authentication: authentication,
      documents: documents,
      openedDocument: openedDocument,
    );
  }
}

/// @nodoc
const $ApplicationInitializedState = _$ApplicationInitializedStateTearOff();

/// @nodoc
mixin _$ApplicationInitializedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationState authentication)
        notAuthenticated,
    required TResult Function(AuthenticationStateAuthenticated authentication,
            DocumentsState documents, DocumentState openedDocument)
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationState authentication)? notAuthenticated,
    TResult Function(AuthenticationStateAuthenticated authentication,
            DocumentsState documents, DocumentState openedDocument)?
        authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationInitializedStateNotAuthenticated value)
        notAuthenticated,
    required TResult Function(ApplicationInitializedStateAuthenticated value)
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationInitializedStateNotAuthenticated value)?
        notAuthenticated,
    TResult Function(ApplicationInitializedStateAuthenticated value)?
        authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationInitializedStateCopyWith<$Res> {
  factory $ApplicationInitializedStateCopyWith(
          ApplicationInitializedState value,
          $Res Function(ApplicationInitializedState) then) =
      _$ApplicationInitializedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApplicationInitializedStateCopyWithImpl<$Res>
    implements $ApplicationInitializedStateCopyWith<$Res> {
  _$ApplicationInitializedStateCopyWithImpl(this._value, this._then);

  final ApplicationInitializedState _value;
  // ignore: unused_field
  final $Res Function(ApplicationInitializedState) _then;
}

/// @nodoc
abstract class $ApplicationInitializedStateNotAuthenticatedCopyWith<$Res> {
  factory $ApplicationInitializedStateNotAuthenticatedCopyWith(
          ApplicationInitializedStateNotAuthenticated value,
          $Res Function(ApplicationInitializedStateNotAuthenticated) then) =
      _$ApplicationInitializedStateNotAuthenticatedCopyWithImpl<$Res>;
  $Res call({AuthenticationState authentication});

  $AuthenticationStateCopyWith<$Res> get authentication;
}

/// @nodoc
class _$ApplicationInitializedStateNotAuthenticatedCopyWithImpl<$Res>
    extends _$ApplicationInitializedStateCopyWithImpl<$Res>
    implements $ApplicationInitializedStateNotAuthenticatedCopyWith<$Res> {
  _$ApplicationInitializedStateNotAuthenticatedCopyWithImpl(
      ApplicationInitializedStateNotAuthenticated _value,
      $Res Function(ApplicationInitializedStateNotAuthenticated) _then)
      : super(_value,
            (v) => _then(v as ApplicationInitializedStateNotAuthenticated));

  @override
  ApplicationInitializedStateNotAuthenticated get _value =>
      super._value as ApplicationInitializedStateNotAuthenticated;

  @override
  $Res call({
    Object? authentication = freezed,
  }) {
    return _then(ApplicationInitializedStateNotAuthenticated(
      authentication: authentication == freezed
          ? _value.authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as AuthenticationState,
    ));
  }

  @override
  $AuthenticationStateCopyWith<$Res> get authentication {
    return $AuthenticationStateCopyWith<$Res>(_value.authentication, (value) {
      return _then(_value.copyWith(authentication: value));
    });
  }
}

/// @nodoc

class _$ApplicationInitializedStateNotAuthenticated
    extends ApplicationInitializedStateNotAuthenticated
    with DiagnosticableTreeMixin {
  const _$ApplicationInitializedStateNotAuthenticated(
      {required this.authentication})
      : super._();

  @override
  final AuthenticationState authentication;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationInitializedState.notAuthenticated(authentication: $authentication)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ApplicationInitializedState.notAuthenticated'))
      ..add(DiagnosticsProperty('authentication', authentication));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationInitializedStateNotAuthenticated &&
            (identical(other.authentication, authentication) ||
                const DeepCollectionEquality()
                    .equals(other.authentication, authentication)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authentication);

  @JsonKey(ignore: true)
  @override
  $ApplicationInitializedStateNotAuthenticatedCopyWith<
          ApplicationInitializedStateNotAuthenticated>
      get copyWith => _$ApplicationInitializedStateNotAuthenticatedCopyWithImpl<
          ApplicationInitializedStateNotAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationState authentication)
        notAuthenticated,
    required TResult Function(AuthenticationStateAuthenticated authentication,
            DocumentsState documents, DocumentState openedDocument)
        authenticated,
  }) {
    return notAuthenticated(authentication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationState authentication)? notAuthenticated,
    TResult Function(AuthenticationStateAuthenticated authentication,
            DocumentsState documents, DocumentState openedDocument)?
        authenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(authentication);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationInitializedStateNotAuthenticated value)
        notAuthenticated,
    required TResult Function(ApplicationInitializedStateAuthenticated value)
        authenticated,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationInitializedStateNotAuthenticated value)?
        notAuthenticated,
    TResult Function(ApplicationInitializedStateAuthenticated value)?
        authenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class ApplicationInitializedStateNotAuthenticated
    extends ApplicationInitializedState {
  const factory ApplicationInitializedStateNotAuthenticated(
          {required AuthenticationState authentication}) =
      _$ApplicationInitializedStateNotAuthenticated;
  const ApplicationInitializedStateNotAuthenticated._() : super._();

  AuthenticationState get authentication => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationInitializedStateNotAuthenticatedCopyWith<
          ApplicationInitializedStateNotAuthenticated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationInitializedStateAuthenticatedCopyWith<$Res> {
  factory $ApplicationInitializedStateAuthenticatedCopyWith(
          ApplicationInitializedStateAuthenticated value,
          $Res Function(ApplicationInitializedStateAuthenticated) then) =
      _$ApplicationInitializedStateAuthenticatedCopyWithImpl<$Res>;
  $Res call(
      {AuthenticationStateAuthenticated authentication,
      DocumentsState documents,
      DocumentState openedDocument});

  $DocumentsStateCopyWith<$Res> get documents;
  $DocumentStateCopyWith<$Res> get openedDocument;
}

/// @nodoc
class _$ApplicationInitializedStateAuthenticatedCopyWithImpl<$Res>
    extends _$ApplicationInitializedStateCopyWithImpl<$Res>
    implements $ApplicationInitializedStateAuthenticatedCopyWith<$Res> {
  _$ApplicationInitializedStateAuthenticatedCopyWithImpl(
      ApplicationInitializedStateAuthenticated _value,
      $Res Function(ApplicationInitializedStateAuthenticated) _then)
      : super(_value,
            (v) => _then(v as ApplicationInitializedStateAuthenticated));

  @override
  ApplicationInitializedStateAuthenticated get _value =>
      super._value as ApplicationInitializedStateAuthenticated;

  @override
  $Res call({
    Object? authentication = freezed,
    Object? documents = freezed,
    Object? openedDocument = freezed,
  }) {
    return _then(ApplicationInitializedStateAuthenticated(
      authentication: authentication == freezed
          ? _value.authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as AuthenticationStateAuthenticated,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as DocumentsState,
      openedDocument: openedDocument == freezed
          ? _value.openedDocument
          : openedDocument // ignore: cast_nullable_to_non_nullable
              as DocumentState,
    ));
  }

  @override
  $DocumentsStateCopyWith<$Res> get documents {
    return $DocumentsStateCopyWith<$Res>(_value.documents, (value) {
      return _then(_value.copyWith(documents: value));
    });
  }

  @override
  $DocumentStateCopyWith<$Res> get openedDocument {
    return $DocumentStateCopyWith<$Res>(_value.openedDocument, (value) {
      return _then(_value.copyWith(openedDocument: value));
    });
  }
}

/// @nodoc

class _$ApplicationInitializedStateAuthenticated
    extends ApplicationInitializedStateAuthenticated
    with DiagnosticableTreeMixin {
  const _$ApplicationInitializedStateAuthenticated(
      {required this.authentication,
      required this.documents,
      required this.openedDocument})
      : super._();

  @override
  final AuthenticationStateAuthenticated authentication;
  @override
  final DocumentsState documents;
  @override
  final DocumentState openedDocument;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationInitializedState.authenticated(authentication: $authentication, documents: $documents, openedDocument: $openedDocument)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ApplicationInitializedState.authenticated'))
      ..add(DiagnosticsProperty('authentication', authentication))
      ..add(DiagnosticsProperty('documents', documents))
      ..add(DiagnosticsProperty('openedDocument', openedDocument));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplicationInitializedStateAuthenticated &&
            (identical(other.authentication, authentication) ||
                const DeepCollectionEquality()
                    .equals(other.authentication, authentication)) &&
            (identical(other.documents, documents) ||
                const DeepCollectionEquality()
                    .equals(other.documents, documents)) &&
            (identical(other.openedDocument, openedDocument) ||
                const DeepCollectionEquality()
                    .equals(other.openedDocument, openedDocument)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authentication) ^
      const DeepCollectionEquality().hash(documents) ^
      const DeepCollectionEquality().hash(openedDocument);

  @JsonKey(ignore: true)
  @override
  $ApplicationInitializedStateAuthenticatedCopyWith<
          ApplicationInitializedStateAuthenticated>
      get copyWith => _$ApplicationInitializedStateAuthenticatedCopyWithImpl<
          ApplicationInitializedStateAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationState authentication)
        notAuthenticated,
    required TResult Function(AuthenticationStateAuthenticated authentication,
            DocumentsState documents, DocumentState openedDocument)
        authenticated,
  }) {
    return authenticated(authentication, documents, openedDocument);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationState authentication)? notAuthenticated,
    TResult Function(AuthenticationStateAuthenticated authentication,
            DocumentsState documents, DocumentState openedDocument)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(authentication, documents, openedDocument);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationInitializedStateNotAuthenticated value)
        notAuthenticated,
    required TResult Function(ApplicationInitializedStateAuthenticated value)
        authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationInitializedStateNotAuthenticated value)?
        notAuthenticated,
    TResult Function(ApplicationInitializedStateAuthenticated value)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class ApplicationInitializedStateAuthenticated
    extends ApplicationInitializedState {
  const factory ApplicationInitializedStateAuthenticated(
          {required AuthenticationStateAuthenticated authentication,
          required DocumentsState documents,
          required DocumentState openedDocument}) =
      _$ApplicationInitializedStateAuthenticated;
  const ApplicationInitializedStateAuthenticated._() : super._();

  AuthenticationStateAuthenticated get authentication =>
      throw _privateConstructorUsedError;
  DocumentsState get documents => throw _privateConstructorUsedError;
  DocumentState get openedDocument => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationInitializedStateAuthenticatedCopyWith<
          ApplicationInitializedStateAuthenticated>
      get copyWith => throw _privateConstructorUsedError;
}
