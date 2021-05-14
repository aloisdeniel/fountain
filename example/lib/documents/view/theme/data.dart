import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';

/// This is an implementation of the application design system constants.
@freezed
class AppThemeData with _$AppThemeData {
  const AppThemeData._();
  const factory AppThemeData({
    required AppThemeColorData color,
    required AppThemeEdgeInsetsData edgeInsets,
    required AppThemeTextStylesData textStyle,
    required AppThemeBorderRadiusData borderRadius,
    required AppThemeBorderData border,
    required AppThemeDurationsData durations,
  }) = _AppThemeData;

  AppThemeSpacingData get spacing => AppThemeSpacingData(edgeInsets);
}

@freezed
class AppThemeColorData with _$AppThemeColorData {
  const factory AppThemeColorData({
    required Color background,
    required Color background2,
    required Color foreground,
    required Color foreground2,
    required Color accent,
    required Color accent2,
    required Color accentForeground,
    required Color shadow,
    required Color accentGlow,
  }) = _AppThemeColorData;
}

@freezed
class AppThemeBorderData with _$AppThemeBorderData {
  const factory AppThemeBorderData({
    required BorderSide small,
  }) = _AppThemeBorderData;
}

@freezed
class AppThemeTextStylesData with _$AppThemeTextStylesData {
  const factory AppThemeTextStylesData({
    required TextStyle title,
    required TextStyle smallTitle,
    required TextStyle paragraph,
    required TextStyle smallParagraph,
    required TextStyle buttonTitle,
    required TextStyle fieldValue,
    required TextStyle fieldPlaceholder,
  }) = _AppThemeTextStylesData;
}

@freezed
class AppThemeEdgeInsetsData with _$AppThemeEdgeInsetsData {
  const factory AppThemeEdgeInsetsData({
    required EdgeInsets small,
    required EdgeInsets semiSmall,
    required EdgeInsets regular,
    required EdgeInsets big,
  }) = _AppThemeEdgeInsetsData;
}

@freezed
abstract class AppThemeBorderRadiusData with _$AppThemeBorderRadiusData {
  const factory AppThemeBorderRadiusData({
    required BorderRadius small,
    required BorderRadius semiSmall,
    required BorderRadius regular,
    required BorderRadius semiBig,
    required BorderRadius big,
  }) = _AppThemeBorderRadiusData;
}

@freezed
abstract class AppThemeDurationsData with _$AppThemeDurationsData {
  const factory AppThemeDurationsData({
    required Duration quick,
    required Duration regular,
    required Duration slow,
  }) = _AppThemeDurationsData;
}

class AppThemeSpacingData {
  const AppThemeSpacingData(this.edgeInsets);
  final AppThemeEdgeInsetsData edgeInsets;
  double get small => edgeInsets.small.top;
  double get semiSmall => edgeInsets.semiSmall.top;
  double get regular => edgeInsets.regular.top;
  double get big => edgeInsets.big.top;
}
