import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';

enum AdaptativeLayout {
  small,
  large,
}

enum AdaptativeTheme {
  auto,
  light,
  dark,
}

@freezed
class AdaptativeData with _$AdaptativeData {
  const factory AdaptativeData({
    required AdaptativeLayout layout,
    required AdaptativeTheme theme,
  }) = _AdaptativeData;
}
