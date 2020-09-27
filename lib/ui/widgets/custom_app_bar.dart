import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/services/app_theme_service.dart';
import 'package:scale_factor/ui/themes/app_colors.dart';
import 'package:scale_factor/utils/ui_utils.dart';
import 'custom_icon_button.dart';
import '../custom_icons.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDarkModeOn = Provider.of<AppThemeService>(context).isDarkModeOn;

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
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Factor',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
            CustomIconButton(
              // This is Information icon
              icon: CustomIcons.info,
              iconColor:
                  isDarkModeOn ? iconActiveColorOnDark : iconActiveColorOnLight,
              backgroundColor: Theme.of(context).accentColor,
              onPressed: () {
                // TODO: Navigate to screen information.dart this screen will
                //  provide information and guideline for android and iOS
              },
            ),
            horizontalSpaceMedium,
            CustomIconButton(
              // This is Dark-Mode icon
              icon:
                  isDarkModeOn ? CustomIcons.light_mode : CustomIcons.dark_mode,
              iconColor: isDarkModeOn
                  ? switchModeButtonIconColorOnDark
                  : switchModeButtonIconColorOnLight,
              backgroundColor: isDarkModeOn
                  ? switchModeButtonColorOnDark
                  : switchModeButtonColorOnLight,
              onPressed: () {
                // TODO: check is darkModeEnabled == false then set it to
                // true and vice versa and rebuild UI
                Provider.of<AppThemeService>(context, listen: false)
                    .updateTheme(!isDarkModeOn);
              },
            )
          ],
        ),
      ),
    );
  }
}
