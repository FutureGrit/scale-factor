import 'package:flutter/material.dart';
import 'package:scale_factor/constants/app_colors.dart';
import 'package:scale_factor/utils/shared_styles.dart';

import '../custom_icons.dart';
import 'package:scale_factor/utils/ui_utils.dart';

const toggleButtonsHeight = 48.0;
const iconSize = 28.0;

class PlatformType extends StatefulWidget {
  @override
  _PlatformTypeState createState() => _PlatformTypeState();
}

class _PlatformTypeState extends State<PlatformType> {
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
        verticalSpaceSmall,
        ToggleButtons(
          constraints: BoxConstraints.expand(
            //TODO: Find another way to set width
            width: ((MediaQuery.of(context).size.width) -
                    ((isSelected.length + 1) * borderWidthNormal) -
                    (horizontalPaddingLarge * 2)) /
                isSelected.length,
            height: toggleButtonsHeight,
          ),
          borderWidth: borderWidthNormal,
          borderRadius: BorderRadius.circular(borderRadiusSmall),
          color: iconInactiveColor,
          selectedColor: iconActiveColor,
          borderColor: borderColor,
          selectedBorderColor: borderColor,
          fillColor: accentColor,
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
      ],
    );
  }
}
