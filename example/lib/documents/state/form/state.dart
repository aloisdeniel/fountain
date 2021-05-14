import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'state.freezed.dart';

enum FieldInvalidReason {
  empty,
  invalidCharacters,
}

enum FormInvalidReason {
  invalidFields,
}

/// Represents the state of a form field of [T] type.
///
/// The field can be validated, and if [notValid] a reason of [TInvalidReason] type can
/// be precvised.
@freezed
class FieldState<T, TInvalidReason> with _$FieldState {
  const FieldState._();

  const factory FieldState.notSpecified() = FieldStateEmpty;

  const factory FieldState.valid(T value) = FieldStateValid;

  const factory FieldState.notValid({
    required T value,
    required TInvalidReason reason,
  }) = FieldStateNotValid;

  bool get isValid => maybeMap(
        valid: (_) => true,
        orElse: () => false,
      );

  T? get maybeValue => maybeMap(
        valid: (x) => x.value,
        orElse: () => null,
      );
}
