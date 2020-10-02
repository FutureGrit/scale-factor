import 'package:flutter/material.dart';

import 'package:scale_factor/ui/themes/app_colors.dart';
import 'package:scale_factor/utils/ui_utils.dart';

const List<BoxShadow> buttonShadow = [
  BoxShadow(
    color: kShadowColor,
    offset: Offset(2.0, 2.0),
    blurRadius: 6,
  )
];

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {@required this.icon,
      @required this.iconColor,
      this.backgroundColor = kAccentColorOnLight,
      @required this.onPressed});

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        shadows: buttonShadow,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBorderRadiusNormal),
        ),
      ),
      child: IconButton(
          padding: EdgeInsets.all(kPaddingNormal),
          iconSize: kIconSize,
          icon: Icon(icon),
          color: iconColor,
          onPressed: onPressed),
    );
  }
}
