import 'package:flutter/material.dart';

// ---- Main App Background ----
const Color kMainBackgroundColorLight = Color(0xFFFCF6F5);
const Color kMainBackgroundColorDark = Color(0xFF0F171C);

// ---- Accent Color ----
const Color kAccentColorOnLight = Color(0xFFFF3D00);
const Color kAccentColorOnDark = Color(0x1FFF3D00);

// ---- Text & TextBackground Color ----
const Color kTextColorOnLight = Color(0xFF023047);
const Color kTextBackgroundColorOnLight = Color(0xFFFFFFFF);

const Color kTextColorOnDark = Color(0xDEFCF5EF); // 87% Alpha
const Color kTextBackgroundColorOnDark =
    Color(0x14FFFFFF); // 8% alpha = 14, 12% alpha = 1F

// ---- Border Color ----
const Color kBorderColorOnLight = Color(0xFFFF3D00);
const Color kBorderColorOnDark = Color(0x61FFFFFF);

// ---- Divider Color ----
const Color kDividerColorOnLight = Color(0x80BDBDBD);
const Color kDividerColorOnDark = Color(0x26BDBDBD);

// ---- Selected Baseline Row Color ----
const Color kBaselineRowColorOnLight = Colors.deepPurple;
const Color kBaselineRowColorOnDark = Colors.green;

// ---- Icon Color ----
const Color kIconActiveColorOnLight = Color(0xFFFCF5EF);
const Color kIconInactiveColorOnLight = Color(0x60486D87); // 60 = 38% Alpha

const Color kIconActiveColorOnDark = Color(0xFFFF3D00);
const Color kIconInactiveColorOnDark = Color(0x60FCF5EF); // 60 = 38% Alpha

// ---- Switch Mode(Dark <--> Light) Button Colors ----
const Color kSwitchModeButtonColorOnLight = Color(0xFF0F171C);
const Color kSwitchModeButtonIconColorOnLight = Color(0xFFFF3D00);

const Color kSwitchModeButtonColorOnDark = Color(0xE6FCF5EF);
const Color kSwitchModeButtonIconColorOnDark = Color(0xFFFF3D00);

// ----------- Dropdown color --------------
const kDropdownColorOnLight = Color(0xFFFCF6F5);
const kDropdownColorOnDark = Color(0xFF152027);

// ---- Shadow Color ----
// TODO: Set shadow color for dark mode
const Color kShadowColor = Color(0x40000000); // 40 = 25% Alpha

/// Take your opacity as decimal value and multiply it by 255. So, if opacity
/// is 38% then the decimal value would be .38
/// and multiplication: .38 * 255 = 96.9
/// Now round number up or down to the nearest whole number.
/// Ex: 96.9 rounds up to 97
/// Now enter decimal value in any online decimal-to-Hex converter.
/// If we only get back a single value, prefix it with a zero
