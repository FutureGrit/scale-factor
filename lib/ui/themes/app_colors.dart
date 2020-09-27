import 'package:flutter/material.dart';

// ---- Main App Background ----
const Color mainBackgroundColorLight = Color(0xFFFCF6F5);
const Color mainBackgroundColorDark = Color(0xFF0F171C);

// ---- Accent Color ----
const Color accentColorOnLight = Color(0xFFFF3D00);
const Color accentColorOnDark = Color(0x1FFF3D00);

// ---- Text & TextBackground Color ----
const Color textColorOnLight = Color(0xFF023047);
const Color textBackgroundColorOnLight = Color(0xFFFFFFFF);

const Color textColorOnDark = Color(0xDEFCF5EF); // 87% Alpha
const Color textBackgroundColorOnDark =
    Color(0x14FFFFFF); // 8% alpha = 14, 12% alpha = 1F

// ---- Border Color ----
const Color borderColorOnLight = Color(0xFFFF3D00);
const Color borderColorOnDark = Color(0x61FFFFFF);

// ---- Divider Color ----
const Color dividerColorOnLight = Color(0x80BDBDBD);
const Color dividerColorOnDark = Color(0x26BDBDBD);

// ---- Selected Baseline Row Color ----
const Color baselineRowColorOnLight = Colors.deepPurple;
const Color baselineRowColorOnDark = Colors.green;

// ---- Icon Color ----
const Color iconActiveColorOnLight = Color(0xFFFCF5EF);
const Color iconInactiveColorOnLight = Color(0x60486D87); // 60 = 38% Alpha

const Color iconActiveColorOnDark = Color(0xFFFF3D00);
const Color iconInactiveColorOnDark = Color(0x60FCF5EF); // 60 = 38% Alpha

// ---- Switch Mode(Dark <--> Light) Button Colors ----
const Color switchModeButtonColorOnLight = Color(0xFF0F171C);
const Color switchModeButtonIconColorOnLight = Color(0xFFFF3D00);

const Color switchModeButtonColorOnDark = Color(0xE6FCF5EF);
const Color switchModeButtonIconColorOnDark = Color(0xFFFF3D00);

// ----------- Dropdown color --------------
const dropdownColorOnLight = Color(0xFFFCF6F5);
const dropdownColorOnDark = Color(0xFF152027);

// ---- Shadow Color ----
// TODO: Set shadow color for dark mode
const Color shadowColor = Color(0x40000000); // 40 = 25% Alpha

/// Take your opacity as decimal value and multiply it by 255. So, if opacity
/// is 38% then the decimal value would be .38
/// and multiplication: .38 * 255 = 96.9
/// Now round number up or down to the nearest whole number.
/// Ex: 96.9 rounds up to 97
/// Now enter decimal value in any online decimal-to-Hex converter.
/// If we only get back a single value, prefix it with a zero
