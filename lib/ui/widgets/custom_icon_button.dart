import 'package:flutter/material.dart';

const iconSize = 28.0;
const iconPadding = 12.0;
const iconBorderRadius = 6.0;

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {@required this.icon,
      this.iconColor = const Color(0xFFFCF6F5),
      this.backgroundColor = Colors.white});

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(iconBorderRadius)),
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
