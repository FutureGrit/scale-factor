import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({@required this.icon, this.backgroundColor = Colors.white});

  final IconData icon;
  final Color backgroundColor;

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
        //highlightColor: Color(0xFFFF3D00),
        icon: Icon(
          icon,
        ),
        iconSize: 48,
        color: Color(0xFFFCF5EF),
        onPressed: () {},
      ),
    );
  }
}
