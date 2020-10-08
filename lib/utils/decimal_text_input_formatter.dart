import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

class DecimalTextInputFormatter extends TextInputFormatter {
  DecimalTextInputFormatter(
      {@required this.maxNumberBeforeDecimalRange, @required this.decimalRange})
      : super() {
    assert(decimalRange == null || decimalRange > 0);
    assert(
        maxNumberBeforeDecimalRange == null || maxNumberBeforeDecimalRange > 0);
  }

  final int decimalRange;
  final int maxNumberBeforeDecimalRange;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    TextSelection newSelection = newValue.selection;
    String truncated = newValue.text;

    if (maxNumberBeforeDecimalRange != null && decimalRange != null) {
      String value = newValue.text;
      int indexOfDecimal = value.indexOf('.');

      // To check if their are multiple decimal point(.) then ignore and to set
      // decimal range given by the user and to check the
      // maxNumberBeforeDecimalRange is not more then set by the user.
      // if any condition met then we will not accept the newValue.
      if ((!value.contains('.') &&
              value.length > maxNumberBeforeDecimalRange) ||
          (value.contains('.') &&
              ('.'.allMatches(value).length > 1 ||
                  value.substring(indexOfDecimal + 1).length > decimalRange ||
                  value.substring(0, indexOfDecimal).length >
                      maxNumberBeforeDecimalRange))) {
        truncated = oldValue.text;
        newSelection = oldValue.selection;
      }

      // If there are no digit before decimal then set default value to "1"
      else if (value == '.') {
        truncated = "1.";

        newSelection = newValue.selection.copyWith(
          baseOffset: math.min(truncated.length, truncated.length + 1),
          extentOffset: math.min(truncated.length, truncated.length + 1),
        );
      }

      return TextEditingValue(
        text: truncated,
        selection: newSelection,
        composing: TextRange.empty,
      );
    }

    return newValue;
  }
}
