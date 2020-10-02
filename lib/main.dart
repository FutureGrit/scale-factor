import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/views/home_view.dart';
import 'package:scale_factor/services/home_view_service.dart';
import 'package:scale_factor/ui/themes/app_theme.dart';
import 'package:scale_factor/services/app_theme_service.dart';

void main() {
  runApp(ChangeNotifierProvider<AppThemeService>(
    create: (context) => AppThemeService(),
    child: ScaleFactor(),
  ));
}

class ScaleFactor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeService>(
      builder: (context, appState, child) {
        return MaterialApp(
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          home: ChangeNotifierProvider(
              create: (context) => HomeViewService(), child: HomeView()),
        );
      },
    );
  }
}
