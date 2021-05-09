// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdaptativeDataTearOff {
  const _$AdaptativeDataTearOff();

  _AdaptativeData call(
      {required AdaptativeLayout layout, required AdaptativeTheme theme}) {
    return _AdaptativeData(
      layout: layout,
      theme: theme,
    );
  }
}

/// @nodoc
const $AdaptativeData = _$AdaptativeDataTearOff();

/// @nodoc
mixin _$AdaptativeData {
  AdaptativeLayout get layout => throw _privateConstructorUsedError;
  AdaptativeTheme get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdaptativeDataCopyWith<AdaptativeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdaptativeDataCopyWith<$Res> {
  factory $AdaptativeDataCopyWith(
          AdaptativeData value, $Res Function(AdaptativeData) then) =
      _$AdaptativeDataCopyWithImpl<$Res>;
  $Res call({AdaptativeLayout layout, AdaptativeTheme theme});
}

/// @nodoc
class _$AdaptativeDataCopyWithImpl<$Res>
    implements $AdaptativeDataCopyWith<$Res> {
  _$AdaptativeDataCopyWithImpl(this._value, this._then);

  final AdaptativeData _value;
  // ignore: unused_field
  final $Res Function(AdaptativeData) _then;

  @override
  $Res call({
    Object? layout = freezed,
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      layout: layout == freezed
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as AdaptativeLayout,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AdaptativeTheme,
    ));
  }
}

/// @nodoc
abstract class _$AdaptativeDataCopyWith<$Res>
    implements $AdaptativeDataCopyWith<$Res> {
  factory _$AdaptativeDataCopyWith(
          _AdaptativeData value, $Res Function(_AdaptativeData) then) =
      __$AdaptativeDataCopyWithImpl<$Res>;
  @override
  $Res call({AdaptativeLayout layout, AdaptativeTheme theme});
}

/// @nodoc
class __$AdaptativeDataCopyWithImpl<$Res>
    extends _$AdaptativeDataCopyWithImpl<$Res>
    implements _$AdaptativeDataCopyWith<$Res> {
  __$AdaptativeDataCopyWithImpl(
      _AdaptativeData _value, $Res Function(_AdaptativeData) _then)
      : super(_value, (v) => _then(v as _AdaptativeData));

  @override
  _AdaptativeData get _value => super._value as _AdaptativeData;

  @override
  $Res call({
    Object? layout = freezed,
    Object? theme = freezed,
  }) {
    return _then(_AdaptativeData(
      layout: layout == freezed
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as AdaptativeLayout,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AdaptativeTheme,
    ));
  }
}

/// @nodoc

class _$_AdaptativeData implements _AdaptativeData {
  const _$_AdaptativeData({required this.layout, required this.theme});

  @override
  final AdaptativeLayout layout;
  @override
  final AdaptativeTheme theme;

  @override
  String toString() {
    return 'AdaptativeData(layout: $layout, theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdaptativeData &&
            (identical(other.layout, layout) ||
                const DeepCollectionEquality().equals(other.layout, layout)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(layout) ^
      const DeepCollectionEquality().hash(theme);

  @JsonKey(ignore: true)
  @override
  _$AdaptativeDataCopyWith<_AdaptativeData> get copyWith =>
      __$AdaptativeDataCopyWithImpl<_AdaptativeData>(this, _$identity);
}

abstract class _AdaptativeData implements AdaptativeData {
  const factory _AdaptativeData(
      {required AdaptativeLayout layout,
      required AdaptativeTheme theme}) = _$_AdaptativeData;

  @override
  AdaptativeLayout get layout => throw _privateConstructorUsedError;
  @override
  AdaptativeTheme get theme => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdaptativeDataCopyWith<_AdaptativeData> get copyWith =>
      throw _privateConstructorUsedError;
}
