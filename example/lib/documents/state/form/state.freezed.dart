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
class _$FieldStateTearOff {
  const _$FieldStateTearOff();

  FieldStateEmpty<T, TInvalidReason> notSpecified<T, TInvalidReason>() {
    return FieldStateEmpty<T, TInvalidReason>();
  }

  FieldStateValid<T, TInvalidReason> valid<T, TInvalidReason>(T value) {
    return FieldStateValid<T, TInvalidReason>(
      value,
    );
  }

  FieldStateNotValid<T, TInvalidReason> notValid<T, TInvalidReason>(
      {required T value, required TInvalidReason reason}) {
    return FieldStateNotValid<T, TInvalidReason>(
      value: value,
      reason: reason,
    );
  }
}

/// @nodoc
const $FieldState = _$FieldStateTearOff();

/// @nodoc
mixin _$FieldState<T, TInvalidReason> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSpecified,
    required TResult Function(T value) valid,
    required TResult Function(T value, TInvalidReason reason) notValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSpecified,
    TResult Function(T value)? valid,
    TResult Function(T value, TInvalidReason reason)? notValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldStateEmpty<T, TInvalidReason> value)
        notSpecified,
    required TResult Function(FieldStateValid<T, TInvalidReason> value) valid,
    required TResult Function(FieldStateNotValid<T, TInvalidReason> value)
        notValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldStateEmpty<T, TInvalidReason> value)? notSpecified,
    TResult Function(FieldStateValid<T, TInvalidReason> value)? valid,
    TResult Function(FieldStateNotValid<T, TInvalidReason> value)? notValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldStateCopyWith<T, TInvalidReason, $Res> {
  factory $FieldStateCopyWith(FieldState<T, TInvalidReason> value,
          $Res Function(FieldState<T, TInvalidReason>) then) =
      _$FieldStateCopyWithImpl<T, TInvalidReason, $Res>;
}

/// @nodoc
class _$FieldStateCopyWithImpl<T, TInvalidReason, $Res>
    implements $FieldStateCopyWith<T, TInvalidReason, $Res> {
  _$FieldStateCopyWithImpl(this._value, this._then);

  final FieldState<T, TInvalidReason> _value;
  // ignore: unused_field
  final $Res Function(FieldState<T, TInvalidReason>) _then;
}

/// @nodoc
abstract class $FieldStateEmptyCopyWith<T, TInvalidReason, $Res> {
  factory $FieldStateEmptyCopyWith(FieldStateEmpty<T, TInvalidReason> value,
          $Res Function(FieldStateEmpty<T, TInvalidReason>) then) =
      _$FieldStateEmptyCopyWithImpl<T, TInvalidReason, $Res>;
}

/// @nodoc
class _$FieldStateEmptyCopyWithImpl<T, TInvalidReason, $Res>
    extends _$FieldStateCopyWithImpl<T, TInvalidReason, $Res>
    implements $FieldStateEmptyCopyWith<T, TInvalidReason, $Res> {
  _$FieldStateEmptyCopyWithImpl(FieldStateEmpty<T, TInvalidReason> _value,
      $Res Function(FieldStateEmpty<T, TInvalidReason>) _then)
      : super(_value, (v) => _then(v as FieldStateEmpty<T, TInvalidReason>));

  @override
  FieldStateEmpty<T, TInvalidReason> get _value =>
      super._value as FieldStateEmpty<T, TInvalidReason>;
}

/// @nodoc

class _$FieldStateEmpty<T, TInvalidReason>
    extends FieldStateEmpty<T, TInvalidReason> with DiagnosticableTreeMixin {
  const _$FieldStateEmpty() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FieldState<$T, $TInvalidReason>.notSpecified()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FieldState<$T, $TInvalidReason>.notSpecified'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FieldStateEmpty<T, TInvalidReason>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSpecified,
    required TResult Function(T value) valid,
    required TResult Function(T value, TInvalidReason reason) notValid,
  }) {
    return notSpecified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSpecified,
    TResult Function(T value)? valid,
    TResult Function(T value, TInvalidReason reason)? notValid,
    required TResult orElse(),
  }) {
    if (notSpecified != null) {
      return notSpecified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldStateEmpty<T, TInvalidReason> value)
        notSpecified,
    required TResult Function(FieldStateValid<T, TInvalidReason> value) valid,
    required TResult Function(FieldStateNotValid<T, TInvalidReason> value)
        notValid,
  }) {
    return notSpecified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldStateEmpty<T, TInvalidReason> value)? notSpecified,
    TResult Function(FieldStateValid<T, TInvalidReason> value)? valid,
    TResult Function(FieldStateNotValid<T, TInvalidReason> value)? notValid,
    required TResult orElse(),
  }) {
    if (notSpecified != null) {
      return notSpecified(this);
    }
    return orElse();
  }
}

abstract class FieldStateEmpty<T, TInvalidReason>
    extends FieldState<T, TInvalidReason> {
  const factory FieldStateEmpty() = _$FieldStateEmpty<T, TInvalidReason>;
  const FieldStateEmpty._() : super._();
}

/// @nodoc
abstract class $FieldStateValidCopyWith<T, TInvalidReason, $Res> {
  factory $FieldStateValidCopyWith(FieldStateValid<T, TInvalidReason> value,
          $Res Function(FieldStateValid<T, TInvalidReason>) then) =
      _$FieldStateValidCopyWithImpl<T, TInvalidReason, $Res>;
  $Res call({T value});
}

/// @nodoc
class _$FieldStateValidCopyWithImpl<T, TInvalidReason, $Res>
    extends _$FieldStateCopyWithImpl<T, TInvalidReason, $Res>
    implements $FieldStateValidCopyWith<T, TInvalidReason, $Res> {
  _$FieldStateValidCopyWithImpl(FieldStateValid<T, TInvalidReason> _value,
      $Res Function(FieldStateValid<T, TInvalidReason>) _then)
      : super(_value, (v) => _then(v as FieldStateValid<T, TInvalidReason>));

  @override
  FieldStateValid<T, TInvalidReason> get _value =>
      super._value as FieldStateValid<T, TInvalidReason>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(FieldStateValid<T, TInvalidReason>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$FieldStateValid<T, TInvalidReason>
    extends FieldStateValid<T, TInvalidReason> with DiagnosticableTreeMixin {
  const _$FieldStateValid(this.value) : super._();

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FieldState<$T, $TInvalidReason>.valid(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'FieldState<$T, $TInvalidReason>.valid'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FieldStateValid<T, TInvalidReason> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $FieldStateValidCopyWith<T, TInvalidReason,
          FieldStateValid<T, TInvalidReason>>
      get copyWith => _$FieldStateValidCopyWithImpl<T, TInvalidReason,
          FieldStateValid<T, TInvalidReason>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSpecified,
    required TResult Function(T value) valid,
    required TResult Function(T value, TInvalidReason reason) notValid,
  }) {
    return valid(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSpecified,
    TResult Function(T value)? valid,
    TResult Function(T value, TInvalidReason reason)? notValid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldStateEmpty<T, TInvalidReason> value)
        notSpecified,
    required TResult Function(FieldStateValid<T, TInvalidReason> value) valid,
    required TResult Function(FieldStateNotValid<T, TInvalidReason> value)
        notValid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldStateEmpty<T, TInvalidReason> value)? notSpecified,
    TResult Function(FieldStateValid<T, TInvalidReason> value)? valid,
    TResult Function(FieldStateNotValid<T, TInvalidReason> value)? notValid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class FieldStateValid<T, TInvalidReason>
    extends FieldState<T, TInvalidReason> {
  const factory FieldStateValid(T value) = _$FieldStateValid<T, TInvalidReason>;
  const FieldStateValid._() : super._();

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldStateValidCopyWith<T, TInvalidReason,
          FieldStateValid<T, TInvalidReason>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldStateNotValidCopyWith<T, TInvalidReason, $Res> {
  factory $FieldStateNotValidCopyWith(
          FieldStateNotValid<T, TInvalidReason> value,
          $Res Function(FieldStateNotValid<T, TInvalidReason>) then) =
      _$FieldStateNotValidCopyWithImpl<T, TInvalidReason, $Res>;
  $Res call({T value, TInvalidReason reason});
}

/// @nodoc
class _$FieldStateNotValidCopyWithImpl<T, TInvalidReason, $Res>
    extends _$FieldStateCopyWithImpl<T, TInvalidReason, $Res>
    implements $FieldStateNotValidCopyWith<T, TInvalidReason, $Res> {
  _$FieldStateNotValidCopyWithImpl(FieldStateNotValid<T, TInvalidReason> _value,
      $Res Function(FieldStateNotValid<T, TInvalidReason>) _then)
      : super(_value, (v) => _then(v as FieldStateNotValid<T, TInvalidReason>));

  @override
  FieldStateNotValid<T, TInvalidReason> get _value =>
      super._value as FieldStateNotValid<T, TInvalidReason>;

  @override
  $Res call({
    Object? value = freezed,
    Object? reason = freezed,
  }) {
    return _then(FieldStateNotValid<T, TInvalidReason>(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as TInvalidReason,
    ));
  }
}

/// @nodoc

class _$FieldStateNotValid<T, TInvalidReason>
    extends FieldStateNotValid<T, TInvalidReason> with DiagnosticableTreeMixin {
  const _$FieldStateNotValid({required this.value, required this.reason})
      : super._();

  @override
  final T value;
  @override
  final TInvalidReason reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FieldState<$T, $TInvalidReason>.notValid(value: $value, reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FieldState<$T, $TInvalidReason>.notValid'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FieldStateNotValid<T, TInvalidReason> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  $FieldStateNotValidCopyWith<T, TInvalidReason,
          FieldStateNotValid<T, TInvalidReason>>
      get copyWith => _$FieldStateNotValidCopyWithImpl<T, TInvalidReason,
          FieldStateNotValid<T, TInvalidReason>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSpecified,
    required TResult Function(T value) valid,
    required TResult Function(T value, TInvalidReason reason) notValid,
  }) {
    return notValid(value, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSpecified,
    TResult Function(T value)? valid,
    TResult Function(T value, TInvalidReason reason)? notValid,
    required TResult orElse(),
  }) {
    if (notValid != null) {
      return notValid(value, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldStateEmpty<T, TInvalidReason> value)
        notSpecified,
    required TResult Function(FieldStateValid<T, TInvalidReason> value) valid,
    required TResult Function(FieldStateNotValid<T, TInvalidReason> value)
        notValid,
  }) {
    return notValid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldStateEmpty<T, TInvalidReason> value)? notSpecified,
    TResult Function(FieldStateValid<T, TInvalidReason> value)? valid,
    TResult Function(FieldStateNotValid<T, TInvalidReason> value)? notValid,
    required TResult orElse(),
  }) {
    if (notValid != null) {
      return notValid(this);
    }
    return orElse();
  }
}

abstract class FieldStateNotValid<T, TInvalidReason>
    extends FieldState<T, TInvalidReason> {
  const factory FieldStateNotValid(
          {required T value, required TInvalidReason reason}) =
      _$FieldStateNotValid<T, TInvalidReason>;
  const FieldStateNotValid._() : super._();

  T get value => throw _privateConstructorUsedError;
  TInvalidReason get reason => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldStateNotValidCopyWith<T, TInvalidReason,
          FieldStateNotValid<T, TInvalidReason>>
      get copyWith => throw _privateConstructorUsedError;
}
