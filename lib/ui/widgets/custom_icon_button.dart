import 'package:flutter/material.dart';

import 'package:scale_factor/constants/app_colors.dart';
import 'package:scale_factor/utils/shared_styles.dart';

const iconSize = 28.0;
const iconPadding = 12.0;
const List<BoxShadow> buttonShadow = [
  BoxShadow(
    color: shadowColor,
    offset: Offset(2.0, 2.0),
    blurRadius: 6,
  )
];

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {@required this.icon,
      this.iconColor = iconActiveColor,
      this.backgroundColor = accentColor});

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        shadows: buttonShadow,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadiusNormal),
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.all(iconPadding),
        iconSize: iconSize,
        icon: Icon(icon),
        color: iconColor,
        onPressed: () {
          // TODO: Implement functionality
        },
      ),
    );
  }
}
