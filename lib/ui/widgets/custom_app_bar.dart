import 'package:flutter/material.dart';

import 'custom_icon_button.dart';
import '../custom_icons.dart';

const spaceBetween = 16.0;
const titleTextStyle = TextStyle(
  fontSize: 30,
  fontFamily: 'RedHatText',
  fontWeight: FontWeight.w900,
  color: Colors.black,
  letterSpacing: 7,
);

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              // App title text
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Scale',
                    style: titleTextStyle,
                  ),
                  Text(
                    'Factor',
                    style: titleTextStyle,
                  ),
                ],
              ),
            ),
            CustomIconButton(
              // This is Information icon
              icon: CustomIcons.info,
              backgroundColor: Color(0xFFFF3D00),
            ),
            SizedBox(
              width: spaceBetween,
            ),
            CustomIconButton(
              // This is Dark-Mode icon
              icon: CustomIcons.dark_mode,
              iconColor: Color(0xFFFF3D00),
              backgroundColor: Color(0xFF0F171C),
            )
          ],
        ),
      ),
    );
  }
}
