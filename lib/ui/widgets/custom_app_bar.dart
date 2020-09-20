import 'package:flutter/material.dart';
import 'package:scale_factor/utils/ui_utils.dart';

import 'custom_icon_button.dart';
import '../custom_icons.dart';

const titleTextStyle = TextStyle(
  fontSize: 30,
  fontFamily: 'RedHatText',
  fontWeight: FontWeight.w900,
  color: Color(0xFF023047),
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
            horizontalSpaceMedium,
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
