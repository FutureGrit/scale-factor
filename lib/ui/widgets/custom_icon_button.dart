import 'package:flutter/material.dart';

const iconSize = 28.0;
const iconPadding = 12.0;
// TODO: change below name to buttonBorderRadius
const buttonBorderRadius = 6.0;
const List<BoxShadow> buttonShadow = [
  BoxShadow(
    color: Color(0x40000000),
    offset: Offset(2.0, 2.0),
    blurRadius: 6,
  )
];

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
      // TODO: Add Shadow
      decoration: ShapeDecoration(
        shadows: buttonShadow,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(buttonBorderRadius)),
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
