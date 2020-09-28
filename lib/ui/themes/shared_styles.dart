import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'package:scale_factor/utils/ui_utils.dart';

// ---- App Title Text Style ----
final appTitleTextStyle = TextStyle(
  fontSize: 30,
  fontFamily: 'RedHatText',
  color: textColorOnLight,
  fontWeight: FontWeight.w900,
  letterSpacing: 7,
);

// ---- Label Text Style ----
const labelTextStyle = TextStyle(
  fontFamily: 'RedHatText',
  fontSize: 11.0,
  letterSpacing: 2.0,
  fontWeight: FontWeight.normal,
  color: textColorOnLight,
);

// ---- Toggle Button Style ----
final toggleButtonStyle = ToggleButtonsThemeData(
  borderWidth: borderWidthNormal,
  borderRadius: BorderRadius.circular(borderRadiusSmall),
  color: iconInactiveColorOnLight,
  selectedColor: iconActiveColorOnLight,
  borderColor: borderColorOnLight,
  selectedBorderColor: borderColorOnLight,
  fillColor: accentColorOnLight,
);

// ---- BOTH icon label in toggle button ----
final bothPlatformIconLabel = TextStyle(
  fontSize: 18.0,
  letterSpacing: 3.0,
  fontFamily: 'RedHatText',
  fontWeight: FontWeight.w900,
);

// ---- Input Field Text Style ----
const inputFieldTextStyle = TextStyle(
  fontSize: 16,
  fontFamily: 'RedHatText',
  fontWeight: FontWeight.w500,
  color: textColorOnLight,
  letterSpacing: 1.5,
);

// ---- Input Field Decoration ----
final inputFieldDecoration = InputDecorationTheme(
  isDense: false,
  contentPadding: EdgeInsets.all(14.0),
  fillColor: textBackgroundColorOnLight,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadiusSmall),
    borderSide: BorderSide(
      color: borderColorOnLight,
      width: borderWidthNormal,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadiusSmall),
    borderSide: BorderSide(
      color: borderColorOnLight,
      width: borderWidthNormal,
    ),
  ),
);

// ---- Table Header Style ----
const tableHeaderStyle = TextStyle(
  fontSize: 14,
  fontFamily: 'RedHatText',
  fontWeight: FontWeight.w900,
  color: textColorOnLight,
  letterSpacing: 2.0,
);

// ---- Table Text Style ----
const tableTextStyle = TextStyle(
  fontSize: 12,
  fontFamily: 'RedHatText',
  color: textColorOnLight,
  letterSpacing: 1.0,
);

// ---- Watermark Text Style ----
const watermarkTextStyle = TextStyle(
  color: Color(0xFFC4C4C4),
  fontSize: 10,
  letterSpacing: 2.0,
  fontFamily: 'RedHatText',
  fontWeight: FontWeight.w500,
);
