import 'package:flutter/material.dart';

import '../custom_icons.dart';
import 'package:scale_factor/utils/ui_utils.dart';
import 'package:scale_factor/ui/themes/shared_styles.dart';

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
          style: Theme.of(context).textTheme.headline6,
        ),
        verticalSpaceSmall,
        ToggleButtons(
          constraints: BoxConstraints.expand(
            width: ((MediaQuery.of(context).size.width) -
                    ((isSelected.length + 1) * borderWidthNormal) -
                    (horizontalPaddingLarge * 2)) /
                isSelected.length,
            height: toggleButtonsHeight,
          ),
          children: [
            Text(
              'BOTH',
              style: bothPlatformIconLabel,
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
