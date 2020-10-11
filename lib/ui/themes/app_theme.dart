import 'package:flutter/material.dart';

import 'shared_styles.dart';
import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  // -------------------- Light Theme --------------------
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: kMainBackgroundColorLight,
    accentColor: kAccentColorOnLight,
    textTheme: TextTheme(
      headline1: kAppTitleTextStyle,
      headline3: kInputFieldTextStyle,
      headline6: kLabelTextStyle,
      bodyText1: kTableHeaderStyle,
      bodyText2: kTableTextStyle,
    ),
    backgroundColor: kTextBackgroundColorOnLight,
    inputDecorationTheme: inputFieldDecoration,
    dividerColor: kDividerColorOnLight,
    toggleButtonsTheme: toggleButtonStyle,
    cardColor: kDropdownColorOnLight,
    focusColor: kBorderColorOnLight,
    selectedRowColor: kBaselineRowColorOnLight,
    disabledColor: Colors.grey,
  );

  // -------------------- Dark Theme --------------------
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: kMainBackgroundColorDark,
      accentColor: kAccentColorOnDark,
      textTheme: TextTheme(
        headline1: kAppTitleTextStyle.copyWith(color: kTextColorOnDark),
        headline3: kInputFieldTextStyle.copyWith(color: kTextColorOnDark),
        headline6: kLabelTextStyle.copyWith(color: kTextColorOnDark),
        bodyText1: kTableHeaderStyle.copyWith(color: kTextColorOnDark),
        bodyText2: kTableTextStyle.copyWith(color: kTextColorOnDark),
      ),
      backgroundColor: kTextBackgroundColorOnDark,
      inputDecorationTheme: inputFieldDecoration.copyWith(
        fillColor: kTextBackgroundColorOnDark,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kBorderColorOnDark),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kBorderColorOnDark),
        ),
      ),
      toggleButtonsTheme: toggleButtonStyle.copyWith(
        color: kIconInactiveColorOnDark,
        selectedColor: kIconActiveColorOnDark,
        borderColor: kBorderColorOnDark,
        selectedBorderColor: kBorderColorOnDark,
        fillColor: kAccentColorOnDark,
      ),
      cardColor: kDropdownColorOnDark,
      focusColor: kBorderColorOnDark,
      dividerColor: kDividerColorOnDark,
      selectedRowColor: kBaselineRowColorOnDark,
      disabledColor: Colors.grey[800]);
}
