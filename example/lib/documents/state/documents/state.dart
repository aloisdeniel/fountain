import 'package:example/documents/services/api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'state.freezed.dart';

@freezed
class DocumentsState with _$DocumentsState {
  const DocumentsState._();
  const factory DocumentsState.notLoaded() = DocumentsStateNotLoaded;

  const factory DocumentsState.loading() = DocumentsStateLoading;

  const factory DocumentsState.loaded({
    required List<Document> documents,
  }) = DocumentsStateLoaded;

  const factory DocumentsState.failed(DocumentsLoadFailedReason reason) =
      DocumentsStateFailed;

  bool get isLoaded => maybeMap(
        loaded: (loaded) => true,
        failed: (failed) => true,
        orElse: () => false,
      );

  bool get isLoading => maybeMap(
        loading: (loading) => true,
        orElse: () => false,
      );

  bool get isFailed => maybeMap(
        failed: (failed) => true,
        orElse: () => false,
      );
}

enum DocumentsLoadFailedReason {
  requestError,
  invalidResponseFormat,
}
