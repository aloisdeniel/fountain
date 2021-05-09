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
