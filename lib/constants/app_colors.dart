import 'package:flutter/material.dart';

// ---- Main ----
const Color accentColor = Color(0xFFFF3D00);

// ---- Background ----
const Color appBackgroundColor = Color(0xFFFDF8F7);
const Color surfaceColor = Color(0xFFFCF6F5);

// ---- Text ----
const Color textColor = Color(0xFF023047);
const Color textBackgroundColor = Color(0xFFFFFFFF);
//const Color textColorLight = Color(0xFFFCF5EF);

// ---- Icon ----
const Color iconActiveColor = Color(0xFFFCF5EF);
// 60 = 38% Alpha
const Color iconInactiveColor = Color(0x61486D87);

const Color borderColor = Color(0xFFFF3D00);

// 40 = 25% Alpha
const Color shadowColor = Color(0x40000000);

// ---- Button for change color theme ----
const Color switchModeButtonBackgroundColor = Color(0xFF0F171C);
const Color switchModeButtonIconColor = Color(0xFFFF3D00);

// ---- Table border color --------
const tableBorderColor = Color(0x59BDBDBD);

/// Take your opacity as decimal value and multiply it by 255. So, if opacity
/// is 38% then the decimal value would be .38
/// and multiplication: .38 * 255 = 96.9
/// Now round number up or down to the nearest whole number.
/// Ex: 96.9 rounds up to 97
/// Now enter decimal value in any online decimal-to-Hex converter.
/// If we only get back a single value, prefix it with a zero
