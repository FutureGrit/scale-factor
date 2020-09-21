import 'package:flutter/material.dart';
import 'package:scale_factor/constants/app_colors.dart';

import 'ui/views/home_view.dart';

void main() {
  runApp(ScaleFactor());
}

class ScaleFactor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scale Factor',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: surfaceColor,
      ),
      home: HomeView(),
    );
  }
}
