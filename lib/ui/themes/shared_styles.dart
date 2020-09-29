import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'package:scale_factor/utils/ui_utils.dart';

// ---- App Title Text Style ----
const kAppTitleTextStyle = TextStyle(
  fontSize: 30,
  fontFamily: 'RedHatText',
  color: kTextColorOnLight,
  fontWeight: FontWeight.w900,
  letterSpacing: 7,
);

// ---- Label Text Style ----
const kLabelTextStyle = TextStyle(
  fontFamily: 'RedHatText',
  fontSize: 11.0,
  letterSpacing: 2.0,
  fontWeight: FontWeight.normal,
  color: kTextColorOnLight,
);

// ---- Toggle Button Style ----
final toggleButtonStyle = ToggleButtonsThemeData(
  borderWidth: kBorderWidthNormal,
  borderRadius: BorderRadius.circular(kBorderRadiusSmall),
  color: kIconInactiveColorOnLight,
  selectedColor: kIconActiveColorOnLight,
  borderColor: kBorderColorOnLight,
  selectedBorderColor: kBorderColorOnLight,
  fillColor: kAccentColorOnLight,
  textStyle: TextStyle(
    fontSize: 20.0,
    letterSpacing: 3.0,
    fontFamily: 'RedHatText',
    fontWeight: FontWeight.w900,
  ),
);

// ---- Input Field Text Style ----
const kInputFieldTextStyle = TextStyle(
  fontSize: 16,
  fontFamily: 'RedHatText',
  fontWeight: FontWeight.w500,
  color: kTextColorOnLight,
  letterSpacing: 1.5,
);

// ---- Input Field Decoration ----
final inputFieldDecoration = InputDecorationTheme(
  isDense: false,
  contentPadding: EdgeInsets.all(14.0),
  fillColor: kTextBackgroundColorOnLight,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(kBorderRadiusSmall),
    borderSide: BorderSide(
      color: kBorderColorOnLight,
      width: kBorderWidthNormal,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(kBorderRadiusSmall),
    borderSide: BorderSide(
      color: kBorderColorOnLight,
      width: kBorderWidthNormal,
    ),
  ),
);

// ---- Table Header Style ----
const kTableHeaderStyle = TextStyle(
  fontSize: 14,
  fontFamily: 'RedHatText',
  fontWeight: FontWeight.w900,
  color: kTextColorOnLight,
  letterSpacing: 2.0,
);

// ---- Table Text Style ----
const kTableTextStyle = TextStyle(
  fontSize: 12,
  fontFamily: 'RedHatText',
  color: kTextColorOnLight,
  letterSpacing: 1.0,
);

// ---- Watermark Text Style ----
const kWatermarkTextStyle = TextStyle(
  color: Color(0xFFC4C4C4),
  fontSize: 10,
  letterSpacing: 2.0,
  fontFamily: 'RedHatText',
  fontWeight: FontWeight.w500,
);
