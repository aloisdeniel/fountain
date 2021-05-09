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
class _$DocumentsStateTearOff {
  const _$DocumentsStateTearOff();

  DocumentsStateNotLoaded notLoaded() {
    return const DocumentsStateNotLoaded();
  }

  DocumentsStateLoading loading() {
    return const DocumentsStateLoading();
  }

  DocumentsStateLoaded loaded({required List<Document> documents}) {
    return DocumentsStateLoaded(
      documents: documents,
    );
  }

  DocumentsStateFailed failed(DocumentsLoadFailedReason reason) {
    return DocumentsStateFailed(
      reason,
    );
  }
}

/// @nodoc
const $DocumentsState = _$DocumentsStateTearOff();

/// @nodoc
mixin _$DocumentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(List<Document> documents) loaded,
    required TResult Function(DocumentsLoadFailedReason reason) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(List<Document> documents)? loaded,
    TResult Function(DocumentsLoadFailedReason reason)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentsStateNotLoaded value) notLoaded,
    required TResult Function(DocumentsStateLoading value) loading,
    required TResult Function(DocumentsStateLoaded value) loaded,
    required TResult Function(DocumentsStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentsStateNotLoaded value)? notLoaded,
    TResult Function(DocumentsStateLoading value)? loading,
    TResult Function(DocumentsStateLoaded value)? loaded,
    TResult Function(DocumentsStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsStateCopyWith<$Res> {
  factory $DocumentsStateCopyWith(
          DocumentsState value, $Res Function(DocumentsState) then) =
      _$DocumentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DocumentsStateCopyWithImpl<$Res>
    implements $DocumentsStateCopyWith<$Res> {
  _$DocumentsStateCopyWithImpl(this._value, this._then);

  final DocumentsState _value;
  // ignore: unused_field
  final $Res Function(DocumentsState) _then;
}

/// @nodoc
abstract class $DocumentsStateNotLoadedCopyWith<$Res> {
  factory $DocumentsStateNotLoadedCopyWith(DocumentsStateNotLoaded value,
          $Res Function(DocumentsStateNotLoaded) then) =
      _$DocumentsStateNotLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DocumentsStateNotLoadedCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res>
    implements $DocumentsStateNotLoadedCopyWith<$Res> {
  _$DocumentsStateNotLoadedCopyWithImpl(DocumentsStateNotLoaded _value,
      $Res Function(DocumentsStateNotLoaded) _then)
      : super(_value, (v) => _then(v as DocumentsStateNotLoaded));

  @override
  DocumentsStateNotLoaded get _value => super._value as DocumentsStateNotLoaded;
}

/// @nodoc

class _$DocumentsStateNotLoaded extends DocumentsStateNotLoaded
    with DiagnosticableTreeMixin {
  const _$DocumentsStateNotLoaded() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DocumentsState.notLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DocumentsState.notLoaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DocumentsStateNotLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(List<Document> documents) loaded,
    required TResult Function(DocumentsLoadFailedReason reason) failed,
  }) {
    return notLoaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(List<Document> documents)? loaded,
    TResult Function(DocumentsLoadFailedReason reason)? failed,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentsStateNotLoaded value) notLoaded,
    required TResult Function(DocumentsStateLoading value) loading,
    required TResult Function(DocumentsStateLoaded value) loaded,
    required TResult Function(DocumentsStateFailed value) failed,
  }) {
    return notLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentsStateNotLoaded value)? notLoaded,
    TResult Function(DocumentsStateLoading value)? loading,
    TResult Function(DocumentsStateLoaded value)? loaded,
    TResult Function(DocumentsStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded(this);
    }
    return orElse();
  }
}

abstract class DocumentsStateNotLoaded extends DocumentsState {
  const factory DocumentsStateNotLoaded() = _$DocumentsStateNotLoaded;
  const DocumentsStateNotLoaded._() : super._();
}

/// @nodoc
abstract class $DocumentsStateLoadingCopyWith<$Res> {
  factory $DocumentsStateLoadingCopyWith(DocumentsStateLoading value,
          $Res Function(DocumentsStateLoading) then) =
      _$DocumentsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DocumentsStateLoadingCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res>
    implements $DocumentsStateLoadingCopyWith<$Res> {
  _$DocumentsStateLoadingCopyWithImpl(
      DocumentsStateLoading _value, $Res Function(DocumentsStateLoading) _then)
      : super(_value, (v) => _then(v as DocumentsStateLoading));

  @override
  DocumentsStateLoading get _value => super._value as DocumentsStateLoading;
}

/// @nodoc

class _$DocumentsStateLoading extends DocumentsStateLoading
    with DiagnosticableTreeMixin {
  const _$DocumentsStateLoading() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DocumentsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DocumentsState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DocumentsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(List<Document> documents) loaded,
    required TResult Function(DocumentsLoadFailedReason reason) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(List<Document> documents)? loaded,
    TResult Function(DocumentsLoadFailedReason reason)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentsStateNotLoaded value) notLoaded,
    required TResult Function(DocumentsStateLoading value) loading,
    required TResult Function(DocumentsStateLoaded value) loaded,
    required TResult Function(DocumentsStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentsStateNotLoaded value)? notLoaded,
    TResult Function(DocumentsStateLoading value)? loading,
    TResult Function(DocumentsStateLoaded value)? loaded,
    TResult Function(DocumentsStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DocumentsStateLoading extends DocumentsState {
  const factory DocumentsStateLoading() = _$DocumentsStateLoading;
  const DocumentsStateLoading._() : super._();
}

/// @nodoc
abstract class $DocumentsStateLoadedCopyWith<$Res> {
  factory $DocumentsStateLoadedCopyWith(DocumentsStateLoaded value,
          $Res Function(DocumentsStateLoaded) then) =
      _$DocumentsStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Document> documents});
}

/// @nodoc
class _$DocumentsStateLoadedCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res>
    implements $DocumentsStateLoadedCopyWith<$Res> {
  _$DocumentsStateLoadedCopyWithImpl(
      DocumentsStateLoaded _value, $Res Function(DocumentsStateLoaded) _then)
      : super(_value, (v) => _then(v as DocumentsStateLoaded));

  @override
  DocumentsStateLoaded get _value => super._value as DocumentsStateLoaded;

  @override
  $Res call({
    Object? documents = freezed,
  }) {
    return _then(DocumentsStateLoaded(
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

/// @nodoc

class _$DocumentsStateLoaded extends DocumentsStateLoaded
    with DiagnosticableTreeMixin {
  const _$DocumentsStateLoaded({required this.documents}) : super._();

  @override
  final List<Document> documents;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DocumentsState.loaded(documents: $documents)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DocumentsState.loaded'))
      ..add(DiagnosticsProperty('documents', documents));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentsStateLoaded &&
            (identical(other.documents, documents) ||
                const DeepCollectionEquality()
                    .equals(other.documents, documents)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(documents);

  @JsonKey(ignore: true)
  @override
  $DocumentsStateLoadedCopyWith<DocumentsStateLoaded> get copyWith =>
      _$DocumentsStateLoadedCopyWithImpl<DocumentsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(List<Document> documents) loaded,
    required TResult Function(DocumentsLoadFailedReason reason) failed,
  }) {
    return loaded(documents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(List<Document> documents)? loaded,
    TResult Function(DocumentsLoadFailedReason reason)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(documents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentsStateNotLoaded value) notLoaded,
    required TResult Function(DocumentsStateLoading value) loading,
    required TResult Function(DocumentsStateLoaded value) loaded,
    required TResult Function(DocumentsStateFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentsStateNotLoaded value)? notLoaded,
    TResult Function(DocumentsStateLoading value)? loading,
    TResult Function(DocumentsStateLoaded value)? loaded,
    TResult Function(DocumentsStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DocumentsStateLoaded extends DocumentsState {
  const factory DocumentsStateLoaded({required List<Document> documents}) =
      _$DocumentsStateLoaded;
  const DocumentsStateLoaded._() : super._();

  List<Document> get documents => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentsStateLoadedCopyWith<DocumentsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsStateFailedCopyWith<$Res> {
  factory $DocumentsStateFailedCopyWith(DocumentsStateFailed value,
          $Res Function(DocumentsStateFailed) then) =
      _$DocumentsStateFailedCopyWithImpl<$Res>;
  $Res call({DocumentsLoadFailedReason reason});
}

/// @nodoc
class _$DocumentsStateFailedCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res>
    implements $DocumentsStateFailedCopyWith<$Res> {
  _$DocumentsStateFailedCopyWithImpl(
      DocumentsStateFailed _value, $Res Function(DocumentsStateFailed) _then)
      : super(_value, (v) => _then(v as DocumentsStateFailed));

  @override
  DocumentsStateFailed get _value => super._value as DocumentsStateFailed;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(DocumentsStateFailed(
      reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as DocumentsLoadFailedReason,
    ));
  }
}

/// @nodoc

class _$DocumentsStateFailed extends DocumentsStateFailed
    with DiagnosticableTreeMixin {
  const _$DocumentsStateFailed(this.reason) : super._();

  @override
  final DocumentsLoadFailedReason reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DocumentsState.failed(reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DocumentsState.failed'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentsStateFailed &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  $DocumentsStateFailedCopyWith<DocumentsStateFailed> get copyWith =>
      _$DocumentsStateFailedCopyWithImpl<DocumentsStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(List<Document> documents) loaded,
    required TResult Function(DocumentsLoadFailedReason reason) failed,
  }) {
    return failed(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(List<Document> documents)? loaded,
    TResult Function(DocumentsLoadFailedReason reason)? failed,
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
    required TResult Function(DocumentsStateNotLoaded value) notLoaded,
    required TResult Function(DocumentsStateLoading value) loading,
    required TResult Function(DocumentsStateLoaded value) loaded,
    required TResult Function(DocumentsStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentsStateNotLoaded value)? notLoaded,
    TResult Function(DocumentsStateLoading value)? loading,
    TResult Function(DocumentsStateLoaded value)? loaded,
    TResult Function(DocumentsStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class DocumentsStateFailed extends DocumentsState {
  const factory DocumentsStateFailed(DocumentsLoadFailedReason reason) =
      _$DocumentsStateFailed;
  const DocumentsStateFailed._() : super._();

  DocumentsLoadFailedReason get reason => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentsStateFailedCopyWith<DocumentsStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
