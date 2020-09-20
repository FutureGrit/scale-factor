import 'package:flutter/material.dart';
import 'package:scale_factor/ui/widgets/baseline_value_unit.dart';

import '../custom_icons.dart';
import 'dropdown_input.dart';

const spaceBetweenSmall = 8.0;
const spaceBetweenMedium = 16.0;
const spaceBetweenLarge = 24.0;
//TODO: set above spaces in ui_util

const borderWidth = 1.0;
const borderRadius = 4.0;
const toggleButtonsHeight = 48.0;
const iconSize = 28.0;
const labelTextStyle = TextStyle(
  fontFamily: 'RedHatText',
  fontSize: 12.0,
  letterSpacing: 2.0,
);

// TODO: move below padding to ui_util
const horizontalPadding = 24.0;

class InputSection extends StatefulWidget {
  @override
  _InputSectionState createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' PLATFORM',
          style: labelTextStyle,
        ),
        SizedBox(
          height: spaceBetweenSmall,
        ),
        ToggleButtons(
          constraints: BoxConstraints.expand(
            //TODO: Find another way to set width
            width: ((MediaQuery.of(context).size.width) -
                    ((isSelected.length + 1) * borderWidth) -
                    (horizontalPadding * 2)) /
                isSelected.length,
            height: toggleButtonsHeight,
          ),
          borderWidth: borderWidth,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          // TODO: Create const for Color Hex alpha values
          color: Color(0x80486D87),
          borderColor: Color(0xFFFF3D00),
          selectedBorderColor: Color(0xFFFF3D00),
          selectedColor: Color(0xFFFCF5EF),
          fillColor: Color(0xFFFF3D00),
          children: [
            Text(
              'BOTH',
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 3.0,
                fontFamily: 'RedHatText',
                fontWeight: FontWeight.w900,
              ),
            ),
            Icon(
              CustomIcons.android,
              size: iconSize,
            ),
            Icon(
              CustomIcons.ios,
              size: iconSize,
            )
          ],
          isSelected: isSelected,
          onPressed: (int index) {
            setState(() {
              for (int buttonIndex = 0;
                  buttonIndex < isSelected.length;
                  buttonIndex++) {
                isSelected[buttonIndex] = buttonIndex == index;
              }
              // TODO: Set value of editText and dropdown to default as per selected platform
              // TODO: Clear table
            });
          },
        ),
        // SizedBox(
        //   height: spaceBetweenLarge,
        // ),
//        BaselineValueUnit(),
      ],
    );
  }
}
