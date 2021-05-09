import 'package:example/documents/services/api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'state.freezed.dart';

@freezed
class DocumentState with _$DocumentState {
  const factory DocumentState.none() = DocumentStateClosed;

  const factory DocumentState.opening() = DocumentStateOpening;

  const factory DocumentState.opened({
    required Document document,
  }) = DocumentStateOpened;

  const factory DocumentState.failed({
    required DocumentStateFailedReason reason,
  }) = DocumentStateFailed;
}

enum DocumentStateFailedReason {
  requestError,
  documentNotFound,
}
