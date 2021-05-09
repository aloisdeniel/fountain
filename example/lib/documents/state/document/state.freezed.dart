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
class _$DocumentStateTearOff {
  const _$DocumentStateTearOff();

  DocumentStateClosed none() {
    return const DocumentStateClosed();
  }

  DocumentStateOpening opening() {
    return const DocumentStateOpening();
  }

  DocumentStateOpened opened({required Document document}) {
    return DocumentStateOpened(
      document: document,
    );
  }

  DocumentStateFailed failed({required DocumentStateFailedReason reason}) {
    return DocumentStateFailed(
      reason: reason,
    );
  }
}

/// @nodoc
const $DocumentState = _$DocumentStateTearOff();

/// @nodoc
mixin _$DocumentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() opening,
    required TResult Function(Document document) opened,
    required TResult Function(DocumentStateFailedReason reason) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(Document document)? opened,
    TResult Function(DocumentStateFailedReason reason)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentStateClosed value) none,
    required TResult Function(DocumentStateOpening value) opening,
    required TResult Function(DocumentStateOpened value) opened,
    required TResult Function(DocumentStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentStateClosed value)? none,
    TResult Function(DocumentStateOpening value)? opening,
    TResult Function(DocumentStateOpened value)? opened,
    TResult Function(DocumentStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentStateCopyWith<$Res> {
  factory $DocumentStateCopyWith(
          DocumentState value, $Res Function(DocumentState) then) =
      _$DocumentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DocumentStateCopyWithImpl<$Res>
    implements $DocumentStateCopyWith<$Res> {
  _$DocumentStateCopyWithImpl(this._value, this._then);

  final DocumentState _value;
  // ignore: unused_field
  final $Res Function(DocumentState) _then;
}

/// @nodoc
abstract class $DocumentStateClosedCopyWith<$Res> {
  factory $DocumentStateClosedCopyWith(
          DocumentStateClosed value, $Res Function(DocumentStateClosed) then) =
      _$DocumentStateClosedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DocumentStateClosedCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res>
    implements $DocumentStateClosedCopyWith<$Res> {
  _$DocumentStateClosedCopyWithImpl(
      DocumentStateClosed _value, $Res Function(DocumentStateClosed) _then)
      : super(_value, (v) => _then(v as DocumentStateClosed));

  @override
  DocumentStateClosed get _value => super._value as DocumentStateClosed;
}

/// @nodoc

class _$DocumentStateClosed
    with DiagnosticableTreeMixin
    implements DocumentStateClosed {
  const _$DocumentStateClosed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DocumentState.none()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DocumentState.none'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DocumentStateClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() opening,
    required TResult Function(Document document) opened,
    required TResult Function(DocumentStateFailedReason reason) failed,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(Document document)? opened,
    TResult Function(DocumentStateFailedReason reason)? failed,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentStateClosed value) none,
    required TResult Function(DocumentStateOpening value) opening,
    required TResult Function(DocumentStateOpened value) opened,
    required TResult Function(DocumentStateFailed value) failed,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentStateClosed value)? none,
    TResult Function(DocumentStateOpening value)? opening,
    TResult Function(DocumentStateOpened value)? opened,
    TResult Function(DocumentStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class DocumentStateClosed implements DocumentState {
  const factory DocumentStateClosed() = _$DocumentStateClosed;
}

/// @nodoc
abstract class $DocumentStateOpeningCopyWith<$Res> {
  factory $DocumentStateOpeningCopyWith(DocumentStateOpening value,
          $Res Function(DocumentStateOpening) then) =
      _$DocumentStateOpeningCopyWithImpl<$Res>;
}

/// @nodoc
class _$DocumentStateOpeningCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res>
    implements $DocumentStateOpeningCopyWith<$Res> {
  _$DocumentStateOpeningCopyWithImpl(
      DocumentStateOpening _value, $Res Function(DocumentStateOpening) _then)
      : super(_value, (v) => _then(v as DocumentStateOpening));

  @override
  DocumentStateOpening get _value => super._value as DocumentStateOpening;
}

/// @nodoc

class _$DocumentStateOpening
    with DiagnosticableTreeMixin
    implements DocumentStateOpening {
  const _$DocumentStateOpening();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DocumentState.opening()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DocumentState.opening'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DocumentStateOpening);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() opening,
    required TResult Function(Document document) opened,
    required TResult Function(DocumentStateFailedReason reason) failed,
  }) {
    return opening();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(Document document)? opened,
    TResult Function(DocumentStateFailedReason reason)? failed,
    required TResult orElse(),
  }) {
    if (opening != null) {
      return opening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentStateClosed value) none,
    required TResult Function(DocumentStateOpening value) opening,
    required TResult Function(DocumentStateOpened value) opened,
    required TResult Function(DocumentStateFailed value) failed,
  }) {
    return opening(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentStateClosed value)? none,
    TResult Function(DocumentStateOpening value)? opening,
    TResult Function(DocumentStateOpened value)? opened,
    TResult Function(DocumentStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (opening != null) {
      return opening(this);
    }
    return orElse();
  }
}

abstract class DocumentStateOpening implements DocumentState {
  const factory DocumentStateOpening() = _$DocumentStateOpening;
}

/// @nodoc
abstract class $DocumentStateOpenedCopyWith<$Res> {
  factory $DocumentStateOpenedCopyWith(
          DocumentStateOpened value, $Res Function(DocumentStateOpened) then) =
      _$DocumentStateOpenedCopyWithImpl<$Res>;
  $Res call({Document document});
}

/// @nodoc
class _$DocumentStateOpenedCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res>
    implements $DocumentStateOpenedCopyWith<$Res> {
  _$DocumentStateOpenedCopyWithImpl(
      DocumentStateOpened _value, $Res Function(DocumentStateOpened) _then)
      : super(_value, (v) => _then(v as DocumentStateOpened));

  @override
  DocumentStateOpened get _value => super._value as DocumentStateOpened;

  @override
  $Res call({
    Object? document = freezed,
  }) {
    return _then(DocumentStateOpened(
      document: document == freezed
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }
}

/// @nodoc

class _$DocumentStateOpened
    with DiagnosticableTreeMixin
    implements DocumentStateOpened {
  const _$DocumentStateOpened({required this.document});

  @override
  final Document document;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DocumentState.opened(document: $document)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DocumentState.opened'))
      ..add(DiagnosticsProperty('document', document));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentStateOpened &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(document);

  @JsonKey(ignore: true)
  @override
  $DocumentStateOpenedCopyWith<DocumentStateOpened> get copyWith =>
      _$DocumentStateOpenedCopyWithImpl<DocumentStateOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() opening,
    required TResult Function(Document document) opened,
    required TResult Function(DocumentStateFailedReason reason) failed,
  }) {
    return opened(document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(Document document)? opened,
    TResult Function(DocumentStateFailedReason reason)? failed,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentStateClosed value) none,
    required TResult Function(DocumentStateOpening value) opening,
    required TResult Function(DocumentStateOpened value) opened,
    required TResult Function(DocumentStateFailed value) failed,
  }) {
    return opened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentStateClosed value)? none,
    TResult Function(DocumentStateOpening value)? opening,
    TResult Function(DocumentStateOpened value)? opened,
    TResult Function(DocumentStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(this);
    }
    return orElse();
  }
}

abstract class DocumentStateOpened implements DocumentState {
  const factory DocumentStateOpened({required Document document}) =
      _$DocumentStateOpened;

  Document get document => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentStateOpenedCopyWith<DocumentStateOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentStateFailedCopyWith<$Res> {
  factory $DocumentStateFailedCopyWith(
          DocumentStateFailed value, $Res Function(DocumentStateFailed) then) =
      _$DocumentStateFailedCopyWithImpl<$Res>;
  $Res call({DocumentStateFailedReason reason});
}

/// @nodoc
class _$DocumentStateFailedCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res>
    implements $DocumentStateFailedCopyWith<$Res> {
  _$DocumentStateFailedCopyWithImpl(
      DocumentStateFailed _value, $Res Function(DocumentStateFailed) _then)
      : super(_value, (v) => _then(v as DocumentStateFailed));

  @override
  DocumentStateFailed get _value => super._value as DocumentStateFailed;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(DocumentStateFailed(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as DocumentStateFailedReason,
    ));
  }
}

/// @nodoc

class _$DocumentStateFailed
    with DiagnosticableTreeMixin
    implements DocumentStateFailed {
  const _$DocumentStateFailed({required this.reason});

  @override
  final DocumentStateFailedReason reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DocumentState.failed(reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DocumentState.failed'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentStateFailed &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  $DocumentStateFailedCopyWith<DocumentStateFailed> get copyWith =>
      _$DocumentStateFailedCopyWithImpl<DocumentStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() opening,
    required TResult Function(Document document) opened,
    required TResult Function(DocumentStateFailedReason reason) failed,
  }) {
    return failed(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(Document document)? opened,
    TResult Function(DocumentStateFailedReason reason)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentStateClosed value) none,
    required TResult Function(DocumentStateOpening value) opening,
    required TResult Function(DocumentStateOpened value) opened,
    required TResult Function(DocumentStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentStateClosed value)? none,
    TResult Function(DocumentStateOpening value)? opening,
    TResult Function(DocumentStateOpened value)? opened,
    TResult Function(DocumentStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class DocumentStateFailed implements DocumentState {
  const factory DocumentStateFailed(
      {required DocumentStateFailedReason reason}) = _$DocumentStateFailed;

  DocumentStateFailedReason get reason => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentStateFailedCopyWith<DocumentStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
