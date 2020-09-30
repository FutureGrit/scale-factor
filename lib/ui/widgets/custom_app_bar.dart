import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/services/app_theme_service.dart';
import 'package:scale_factor/ui/themes/app_colors.dart';
import 'package:scale_factor/ui/views/information_view.dart';
import 'package:scale_factor/utils/ui_utils.dart';
import 'custom_icon_button.dart';
import '../custom_icons.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDarkModeOn = Provider.of<AppThemeService>(context).isDarkModeOn;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
            kPaddingLarge, kPaddingSmall, kPaddingLarge, kPaddingMedium),
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
              iconColor: isDarkModeOn
                  ? kIconActiveColorOnDark
                  : kIconActiveColorOnLight,
              backgroundColor: Theme.of(context).accentColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationView()),
                );
              },
            ),
            kHorizontalSpaceMedium,
            CustomIconButton(
              // This is Dark-Mode icon
              icon:
                  isDarkModeOn ? CustomIcons.light_mode : CustomIcons.dark_mode,
              iconColor: isDarkModeOn
                  ? kSwitchModeButtonIconColorOnDark
                  : kSwitchModeButtonIconColorOnLight,
              backgroundColor: isDarkModeOn
                  ? kSwitchModeButtonColorOnDark
                  : kSwitchModeButtonColorOnLight,
              onPressed: () {
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
