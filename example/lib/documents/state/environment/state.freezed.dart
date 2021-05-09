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
class _$EnvironmentStateTearOff {
  const _$EnvironmentStateTearOff();

  _EnvironmentState call(
      {required String deviceName,
      required String deviceModel,
      required String versionName,
      required String buildNumber,
      required Environment environment,
      required FeatureFlags features}) {
    return _EnvironmentState(
      deviceName: deviceName,
      deviceModel: deviceModel,
      versionName: versionName,
      buildNumber: buildNumber,
      environment: environment,
      features: features,
    );
  }
}

/// @nodoc
const $EnvironmentState = _$EnvironmentStateTearOff();

/// @nodoc
mixin _$EnvironmentState {
  String get deviceName => throw _privateConstructorUsedError;
  String get deviceModel => throw _privateConstructorUsedError;
  String get versionName => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;
  Environment get environment => throw _privateConstructorUsedError;
  FeatureFlags get features => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnvironmentStateCopyWith<EnvironmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentStateCopyWith<$Res> {
  factory $EnvironmentStateCopyWith(
          EnvironmentState value, $Res Function(EnvironmentState) then) =
      _$EnvironmentStateCopyWithImpl<$Res>;
  $Res call(
      {String deviceName,
      String deviceModel,
      String versionName,
      String buildNumber,
      Environment environment,
      FeatureFlags features});

  $FeatureFlagsCopyWith<$Res> get features;
}

/// @nodoc
class _$EnvironmentStateCopyWithImpl<$Res>
    implements $EnvironmentStateCopyWith<$Res> {
  _$EnvironmentStateCopyWithImpl(this._value, this._then);

  final EnvironmentState _value;
  // ignore: unused_field
  final $Res Function(EnvironmentState) _then;

  @override
  $Res call({
    Object? deviceName = freezed,
    Object? deviceModel = freezed,
    Object? versionName = freezed,
    Object? buildNumber = freezed,
    Object? environment = freezed,
    Object? features = freezed,
  }) {
    return _then(_value.copyWith(
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      deviceModel: deviceModel == freezed
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String,
      versionName: versionName == freezed
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: buildNumber == freezed
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as FeatureFlags,
    ));
  }

  @override
  $FeatureFlagsCopyWith<$Res> get features {
    return $FeatureFlagsCopyWith<$Res>(_value.features, (value) {
      return _then(_value.copyWith(features: value));
    });
  }
}

/// @nodoc
abstract class _$EnvironmentStateCopyWith<$Res>
    implements $EnvironmentStateCopyWith<$Res> {
  factory _$EnvironmentStateCopyWith(
          _EnvironmentState value, $Res Function(_EnvironmentState) then) =
      __$EnvironmentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String deviceName,
      String deviceModel,
      String versionName,
      String buildNumber,
      Environment environment,
      FeatureFlags features});

  @override
  $FeatureFlagsCopyWith<$Res> get features;
}

/// @nodoc
class __$EnvironmentStateCopyWithImpl<$Res>
    extends _$EnvironmentStateCopyWithImpl<$Res>
    implements _$EnvironmentStateCopyWith<$Res> {
  __$EnvironmentStateCopyWithImpl(
      _EnvironmentState _value, $Res Function(_EnvironmentState) _then)
      : super(_value, (v) => _then(v as _EnvironmentState));

  @override
  _EnvironmentState get _value => super._value as _EnvironmentState;

  @override
  $Res call({
    Object? deviceName = freezed,
    Object? deviceModel = freezed,
    Object? versionName = freezed,
    Object? buildNumber = freezed,
    Object? environment = freezed,
    Object? features = freezed,
  }) {
    return _then(_EnvironmentState(
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      deviceModel: deviceModel == freezed
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String,
      versionName: versionName == freezed
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: buildNumber == freezed
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as FeatureFlags,
    ));
  }
}

/// @nodoc

class _$_EnvironmentState
    with DiagnosticableTreeMixin
    implements _EnvironmentState {
  const _$_EnvironmentState(
      {required this.deviceName,
      required this.deviceModel,
      required this.versionName,
      required this.buildNumber,
      required this.environment,
      required this.features});

  @override
  final String deviceName;
  @override
  final String deviceModel;
  @override
  final String versionName;
  @override
  final String buildNumber;
  @override
  final Environment environment;
  @override
  final FeatureFlags features;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EnvironmentState(deviceName: $deviceName, deviceModel: $deviceModel, versionName: $versionName, buildNumber: $buildNumber, environment: $environment, features: $features)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EnvironmentState'))
      ..add(DiagnosticsProperty('deviceName', deviceName))
      ..add(DiagnosticsProperty('deviceModel', deviceModel))
      ..add(DiagnosticsProperty('versionName', versionName))
      ..add(DiagnosticsProperty('buildNumber', buildNumber))
      ..add(DiagnosticsProperty('environment', environment))
      ..add(DiagnosticsProperty('features', features));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnvironmentState &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.deviceModel, deviceModel) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModel, deviceModel)) &&
            (identical(other.versionName, versionName) ||
                const DeepCollectionEquality()
                    .equals(other.versionName, versionName)) &&
            (identical(other.buildNumber, buildNumber) ||
                const DeepCollectionEquality()
                    .equals(other.buildNumber, buildNumber)) &&
            (identical(other.environment, environment) ||
                const DeepCollectionEquality()
                    .equals(other.environment, environment)) &&
            (identical(other.features, features) ||
                const DeepCollectionEquality()
                    .equals(other.features, features)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceModel) ^
      const DeepCollectionEquality().hash(versionName) ^
      const DeepCollectionEquality().hash(buildNumber) ^
      const DeepCollectionEquality().hash(environment) ^
      const DeepCollectionEquality().hash(features);

  @JsonKey(ignore: true)
  @override
  _$EnvironmentStateCopyWith<_EnvironmentState> get copyWith =>
      __$EnvironmentStateCopyWithImpl<_EnvironmentState>(this, _$identity);
}

abstract class _EnvironmentState implements EnvironmentState {
  const factory _EnvironmentState(
      {required String deviceName,
      required String deviceModel,
      required String versionName,
      required String buildNumber,
      required Environment environment,
      required FeatureFlags features}) = _$_EnvironmentState;

  @override
  String get deviceName => throw _privateConstructorUsedError;
  @override
  String get deviceModel => throw _privateConstructorUsedError;
  @override
  String get versionName => throw _privateConstructorUsedError;
  @override
  String get buildNumber => throw _privateConstructorUsedError;
  @override
  Environment get environment => throw _privateConstructorUsedError;
  @override
  FeatureFlags get features => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnvironmentStateCopyWith<_EnvironmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FeatureFlagsTearOff {
  const _$FeatureFlagsTearOff();

  _FeatureFlags call({required ExampleFeatureFlag example}) {
    return _FeatureFlags(
      example: example,
    );
  }
}

/// @nodoc
const $FeatureFlags = _$FeatureFlagsTearOff();

/// @nodoc
mixin _$FeatureFlags {
  ExampleFeatureFlag get example => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeatureFlagsCopyWith<FeatureFlags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureFlagsCopyWith<$Res> {
  factory $FeatureFlagsCopyWith(
          FeatureFlags value, $Res Function(FeatureFlags) then) =
      _$FeatureFlagsCopyWithImpl<$Res>;
  $Res call({ExampleFeatureFlag example});

  $ExampleFeatureFlagCopyWith<$Res> get example;
}

/// @nodoc
class _$FeatureFlagsCopyWithImpl<$Res> implements $FeatureFlagsCopyWith<$Res> {
  _$FeatureFlagsCopyWithImpl(this._value, this._then);

  final FeatureFlags _value;
  // ignore: unused_field
  final $Res Function(FeatureFlags) _then;

  @override
  $Res call({
    Object? example = freezed,
  }) {
    return _then(_value.copyWith(
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as ExampleFeatureFlag,
    ));
  }

  @override
  $ExampleFeatureFlagCopyWith<$Res> get example {
    return $ExampleFeatureFlagCopyWith<$Res>(_value.example, (value) {
      return _then(_value.copyWith(example: value));
    });
  }
}

/// @nodoc
abstract class _$FeatureFlagsCopyWith<$Res>
    implements $FeatureFlagsCopyWith<$Res> {
  factory _$FeatureFlagsCopyWith(
          _FeatureFlags value, $Res Function(_FeatureFlags) then) =
      __$FeatureFlagsCopyWithImpl<$Res>;
  @override
  $Res call({ExampleFeatureFlag example});

  @override
  $ExampleFeatureFlagCopyWith<$Res> get example;
}

/// @nodoc
class __$FeatureFlagsCopyWithImpl<$Res> extends _$FeatureFlagsCopyWithImpl<$Res>
    implements _$FeatureFlagsCopyWith<$Res> {
  __$FeatureFlagsCopyWithImpl(
      _FeatureFlags _value, $Res Function(_FeatureFlags) _then)
      : super(_value, (v) => _then(v as _FeatureFlags));

  @override
  _FeatureFlags get _value => super._value as _FeatureFlags;

  @override
  $Res call({
    Object? example = freezed,
  }) {
    return _then(_FeatureFlags(
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as ExampleFeatureFlag,
    ));
  }
}

/// @nodoc

class _$_FeatureFlags with DiagnosticableTreeMixin implements _FeatureFlags {
  const _$_FeatureFlags({required this.example});

  @override
  final ExampleFeatureFlag example;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeatureFlags(example: $example)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeatureFlags'))
      ..add(DiagnosticsProperty('example', example));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeatureFlags &&
            (identical(other.example, example) ||
                const DeepCollectionEquality().equals(other.example, example)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(example);

  @JsonKey(ignore: true)
  @override
  _$FeatureFlagsCopyWith<_FeatureFlags> get copyWith =>
      __$FeatureFlagsCopyWithImpl<_FeatureFlags>(this, _$identity);
}

abstract class _FeatureFlags implements FeatureFlags {
  const factory _FeatureFlags({required ExampleFeatureFlag example}) =
      _$_FeatureFlags;

  @override
  ExampleFeatureFlag get example => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeatureFlagsCopyWith<_FeatureFlags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExampleFeatureFlagTearOff {
  const _$ExampleFeatureFlagTearOff();

  _ExampleFeatureFlagA modeA() {
    return const _ExampleFeatureFlagA();
  }

  _ExampleFeatureFlagB modeB() {
    return const _ExampleFeatureFlagB();
  }
}

/// @nodoc
const $ExampleFeatureFlag = _$ExampleFeatureFlagTearOff();

/// @nodoc
mixin _$ExampleFeatureFlag {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() modeA,
    required TResult Function() modeB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? modeA,
    TResult Function()? modeB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExampleFeatureFlagA value) modeA,
    required TResult Function(_ExampleFeatureFlagB value) modeB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFeatureFlagA value)? modeA,
    TResult Function(_ExampleFeatureFlagB value)? modeB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleFeatureFlagCopyWith<$Res> {
  factory $ExampleFeatureFlagCopyWith(
          ExampleFeatureFlag value, $Res Function(ExampleFeatureFlag) then) =
      _$ExampleFeatureFlagCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExampleFeatureFlagCopyWithImpl<$Res>
    implements $ExampleFeatureFlagCopyWith<$Res> {
  _$ExampleFeatureFlagCopyWithImpl(this._value, this._then);

  final ExampleFeatureFlag _value;
  // ignore: unused_field
  final $Res Function(ExampleFeatureFlag) _then;
}

/// @nodoc
abstract class _$ExampleFeatureFlagACopyWith<$Res> {
  factory _$ExampleFeatureFlagACopyWith(_ExampleFeatureFlagA value,
          $Res Function(_ExampleFeatureFlagA) then) =
      __$ExampleFeatureFlagACopyWithImpl<$Res>;
}

/// @nodoc
class __$ExampleFeatureFlagACopyWithImpl<$Res>
    extends _$ExampleFeatureFlagCopyWithImpl<$Res>
    implements _$ExampleFeatureFlagACopyWith<$Res> {
  __$ExampleFeatureFlagACopyWithImpl(
      _ExampleFeatureFlagA _value, $Res Function(_ExampleFeatureFlagA) _then)
      : super(_value, (v) => _then(v as _ExampleFeatureFlagA));

  @override
  _ExampleFeatureFlagA get _value => super._value as _ExampleFeatureFlagA;
}

/// @nodoc

class _$_ExampleFeatureFlagA
    with DiagnosticableTreeMixin
    implements _ExampleFeatureFlagA {
  const _$_ExampleFeatureFlagA();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExampleFeatureFlag.modeA()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ExampleFeatureFlag.modeA'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExampleFeatureFlagA);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() modeA,
    required TResult Function() modeB,
  }) {
    return modeA();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? modeA,
    TResult Function()? modeB,
    required TResult orElse(),
  }) {
    if (modeA != null) {
      return modeA();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExampleFeatureFlagA value) modeA,
    required TResult Function(_ExampleFeatureFlagB value) modeB,
  }) {
    return modeA(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFeatureFlagA value)? modeA,
    TResult Function(_ExampleFeatureFlagB value)? modeB,
    required TResult orElse(),
  }) {
    if (modeA != null) {
      return modeA(this);
    }
    return orElse();
  }
}

abstract class _ExampleFeatureFlagA implements ExampleFeatureFlag {
  const factory _ExampleFeatureFlagA() = _$_ExampleFeatureFlagA;
}

/// @nodoc
abstract class _$ExampleFeatureFlagBCopyWith<$Res> {
  factory _$ExampleFeatureFlagBCopyWith(_ExampleFeatureFlagB value,
          $Res Function(_ExampleFeatureFlagB) then) =
      __$ExampleFeatureFlagBCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExampleFeatureFlagBCopyWithImpl<$Res>
    extends _$ExampleFeatureFlagCopyWithImpl<$Res>
    implements _$ExampleFeatureFlagBCopyWith<$Res> {
  __$ExampleFeatureFlagBCopyWithImpl(
      _ExampleFeatureFlagB _value, $Res Function(_ExampleFeatureFlagB) _then)
      : super(_value, (v) => _then(v as _ExampleFeatureFlagB));

  @override
  _ExampleFeatureFlagB get _value => super._value as _ExampleFeatureFlagB;
}

/// @nodoc

class _$_ExampleFeatureFlagB
    with DiagnosticableTreeMixin
    implements _ExampleFeatureFlagB {
  const _$_ExampleFeatureFlagB();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExampleFeatureFlag.modeB()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ExampleFeatureFlag.modeB'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExampleFeatureFlagB);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() modeA,
    required TResult Function() modeB,
  }) {
    return modeB();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? modeA,
    TResult Function()? modeB,
    required TResult orElse(),
  }) {
    if (modeB != null) {
      return modeB();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExampleFeatureFlagA value) modeA,
    required TResult Function(_ExampleFeatureFlagB value) modeB,
  }) {
    return modeB(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFeatureFlagA value)? modeA,
    TResult Function(_ExampleFeatureFlagB value)? modeB,
    required TResult orElse(),
  }) {
    if (modeB != null) {
      return modeB(this);
    }
    return orElse();
  }
}

abstract class _ExampleFeatureFlagB implements ExampleFeatureFlag {
  const factory _ExampleFeatureFlagB() = _$_ExampleFeatureFlagB;
}
