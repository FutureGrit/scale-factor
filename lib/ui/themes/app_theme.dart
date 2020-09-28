import 'package:flutter/material.dart';

import 'shared_styles.dart';
import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  // -------------------- Light Theme --------------------
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: mainBackgroundColorLight,
    accentColor: accentColorOnLight,
    textTheme: TextTheme(
      headline1: appTitleTextStyle,
      headline3: inputFieldTextStyle,
      headline6: labelTextStyle,
      bodyText1: tableHeaderStyle,
      bodyText2: tableTextStyle,
    ),
    backgroundColor: textBackgroundColorOnLight,
    inputDecorationTheme: inputFieldDecoration,
    dividerColor: dividerColorOnLight,
    toggleButtonsTheme: toggleButtonStyle,
    cardColor: dropdownColorOnLight,
    focusColor: borderColorOnLight,
    selectedRowColor: baselineRowColorOnLight,
  );

  // -------------------- Dark Theme --------------------
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: mainBackgroundColorDark,
    accentColor: accentColorOnDark,
    textTheme: TextTheme(
      headline1: appTitleTextStyle.copyWith(color: textColorOnDark),
      headline3: inputFieldTextStyle.copyWith(color: textColorOnDark),
      headline6: labelTextStyle.copyWith(color: textColorOnDark),
      bodyText1: tableHeaderStyle.copyWith(color: textColorOnDark),
      bodyText2: tableTextStyle.copyWith(color: textColorOnDark),
    ),
    backgroundColor: textBackgroundColorOnDark,
    inputDecorationTheme: inputFieldDecoration.copyWith(
      fillColor: textBackgroundColorOnDark,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColorOnDark),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColorOnDark),
      ),
    ),
    toggleButtonsTheme: toggleButtonStyle.copyWith(
      color: iconInactiveColorOnDark,
      selectedColor: iconActiveColorOnDark,
      borderColor: borderColorOnDark,
      selectedBorderColor: borderColorOnDark,
      fillColor: accentColorOnDark,
    ),
    cardColor: dropdownColorOnDark,
    focusColor: borderColorOnDark,
    dividerColor: dividerColorOnDark,
    selectedRowColor: baselineRowColorOnDark,
  );
}
