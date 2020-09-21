import 'package:flutter/material.dart';
import 'package:scale_factor/constants/app_colors.dart';
import 'package:scale_factor/utils/shared_styles.dart';
import 'package:scale_factor/utils/ui_utils.dart';

import 'custom_icon_button.dart';
import '../custom_icons.dart';

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
                    style: appTitleTextStyle,
                  ),
                  Text(
                    'Factor',
                    style: appTitleTextStyle,
                  ),
                ],
              ),
            ),
            CustomIconButton(
              // This is Information icon
              icon: CustomIcons.info,
            ),
            horizontalSpaceMedium,
            CustomIconButton(
              // This is Dark-Mode icon
              icon: CustomIcons.dark_mode,
              iconColor: switchModeButtonIconColor,
              backgroundColor: switchModeButtonBackgroundColor,
            )
          ],
        ),
      ),
    );
  }
}
