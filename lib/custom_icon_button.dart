import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:scale_factor/custom_icons.dart';

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
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.all(12.0),
        iconSize: 40,
        icon: Icon(icon),
        color: iconColor,
        onPressed: () {
          print('Icon tapped');
        },
      ),
    );
  }
}

// return Ink(
// decoration: ShapeDecoration(
// color: backgroundColor,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.all(Radius.circular(6.0)),
// ),
// ),
// child: IconButton(
// iconSize: 48,
// icon: SvgPicture.asset(
// 'assets/dark-mode.svg',
// color: Colors.white,
// ),
// onPressed: () {
// print('Icon tapped');
// },
// ),
// );
