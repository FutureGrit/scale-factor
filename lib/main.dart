import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scale_factor/locator.dart';

import 'package:scale_factor/viewmodels/baseline_view_model.dart';
import 'package:scale_factor/viewmodels/platform_view_model.dart';
import 'package:scale_factor/viewmodels/table_view_model.dart';
import 'package:scale_factor/viewmodels/unit_view_model.dart';
import 'package:scale_factor/viewmodels/value_view_model.dart';

import 'ui/views/home_view.dart';
import 'package:scale_factor/ui/themes/app_theme.dart';
import 'package:scale_factor/services/app_theme_service.dart';

void main() {
  setupLocator();
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
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => PlatformViewModel()),
              ChangeNotifierProvider(create: (_) => BaselineViewModel()),
              ChangeNotifierProvider(create: (_) => ValueViewModel()),
              ChangeNotifierProvider(create: (_) => UnitViewModel()),
              ChangeNotifierProvider(create: (_) => TableViewModel()),
            ],
            child: HomeView(),
          ),
        );
      },
    );
  }
}
