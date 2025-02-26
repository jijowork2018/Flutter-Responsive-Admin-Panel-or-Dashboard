// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color primaryDark;
  Color background;
  Color grayIcon;
  Color gray200;
  Color dark600;

  TextStyle get title1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: primaryDark,
        fontWeight: FontWeight.w600,
        fontSize: 28,
      ).override(fontFamily: 'outfitNormal', useGoogleFonts: false);
  TextStyle get title2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: primaryDark,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      ).override(fontFamily: 'outfitNormal', useGoogleFonts: false);
  TextStyle get title3 => GoogleFonts.getFont(
        'Lexend Deca',
        color: primaryDark,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ).override(fontFamily: 'outfitNormal', useGoogleFonts: false);
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: grayIcon,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ).override(fontFamily: 'outfitNormal', useGoogleFonts: false);
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: primaryDark,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      ).override(fontFamily: 'outfitNormal', useGoogleFonts: false);
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: grayIcon,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ).override(fontFamily: 'outfitNormal', useGoogleFonts: false);
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: primaryDark,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ).override(fontFamily: 'outfitNormal', useGoogleFonts: false);
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF4E39F9);
  Color secondaryColor = const Color(0xFF39D2C0);
  Color tertiaryColor = const Color(0xFFFFFFFF);
  Color alternate = const Color(0x00000000);
  Color primaryBackground = const Color(0x00000000);
  Color secondaryBackground = const Color(0x00000000);
  Color primaryText = const Color(0x00000000);
  Color secondaryText = const Color(0x00000000);

  Color primaryDark = Color(0xFF1A1F24);
  Color background = Color(0xFFF1F4F8);
  Color grayIcon = Color(0xFF95A1AC);
  Color gray200 = Color(0xFFDBE2E7);
  Color dark600 = Color(0xFF262D34);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
