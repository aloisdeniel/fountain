import 'package:example/documents/view/adaptative/data.dart';
import 'package:example/documents/view/theme/data.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

const durations = AppThemeDurationsData(
  quick: Duration(milliseconds: 100),
  regular: Duration(milliseconds: 200),
  slow: Duration(milliseconds: 500),
);

const colors = <AdaptativeTheme, AppThemeColorData>{
  AdaptativeTheme.light: AppThemeColorData(
    background: Color(0xFFFFFFFF),
    background2: Color(0xFFD4DEE9),
    foreground: Color(0xFF0F253F),
    foreground2: Color(0xFF0F253F),
    accent: Color(0xFF1B8DED),
    accent2: Color(0xFF0071D0),
    accentForeground: Color(0xFFFFFFFF),
    shadow: Color(0xFF342865),
    accentGlow: Color(0xFF1B8DED),
  ),
  AdaptativeTheme.dark: AppThemeColorData(
    background: Color(0xFF0F253F),
    background2: Color(0xFF365172),
    foreground: Color(0xFFFFFFFF),
    foreground2: Color(0xFF9FB6CD),
    accent: Color(0xFF1795FF),
    accent2: Color(0xFF007AE0),
    accentForeground: Color(0xFFFFFFFF),
    shadow: Color(0xFF1795FF),
    accentGlow: Color(0xFF1795FF),
  ),
};

const edgeInsets = <AdaptativeLayout, AppThemeEdgeInsetsData>{
  AdaptativeLayout.small: AppThemeEdgeInsetsData(
    big: EdgeInsets.all(24),
    regular: EdgeInsets.all(12),
    semiSmall: EdgeInsets.all(6),
    small: EdgeInsets.all(4),
  ),
  AdaptativeLayout.large: AppThemeEdgeInsetsData(
    big: EdgeInsets.all(48),
    regular: EdgeInsets.all(16),
    semiSmall: EdgeInsets.all(12),
    small: EdgeInsets.all(6),
  ),
};

const borderRadius = <AdaptativeLayout, AppThemeBorderRadiusData>{
  AdaptativeLayout.small: AppThemeBorderRadiusData(
    big: BorderRadius.all(Radius.circular(20)),
    semiBig: BorderRadius.all(Radius.circular(10)),
    regular: BorderRadius.all(Radius.circular(4)),
    semiSmall: BorderRadius.all(Radius.circular(2)),
    small: BorderRadius.all(Radius.circular(1)),
  ),
  AdaptativeLayout.large: AppThemeBorderRadiusData(
    big: BorderRadius.all(Radius.circular(20)),
    semiBig: BorderRadius.all(Radius.circular(10)),
    regular: BorderRadius.all(Radius.circular(4)),
    semiSmall: BorderRadius.all(Radius.circular(2)),
    small: BorderRadius.all(Radius.circular(1)),
  ),
};

final textStyles = <AdaptativeLayout, AppThemeTextStylesData>{
  AdaptativeLayout.small: AppThemeTextStylesData(
    title: GoogleFonts.inter(
      fontSize: 32,
      fontWeight: FontWeight.w700,
    ),
    smallTitle: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
    paragraph: GoogleFonts.inter(
      fontSize: 11,
      fontWeight: FontWeight.w400,
    ),
    smallParagraph: GoogleFonts.inter(
      fontSize: 9,
      fontWeight: FontWeight.w400,
    ),
    fieldValue: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    fieldPlaceholder: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    buttonTitle: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  ),
  AdaptativeLayout.large: AppThemeTextStylesData(
    title: GoogleFonts.inter(
      fontSize: 48,
      fontWeight: FontWeight.w700,
    ),
    smallTitle: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    paragraph: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    smallParagraph: GoogleFonts.inter(
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
    fieldValue: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    fieldPlaceholder: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    buttonTitle: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
};
