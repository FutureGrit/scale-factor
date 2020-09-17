import 'package:flutter/material.dart';

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
        primaryColor: Color(0xFFFCF6F5),
        scaffoldBackgroundColor: Color(0xCCFCF6F5),
      ),
      home: Container(
        // To set default background color to white
        color: Colors.white,
        child: HomeView(),
      ),
    );
  }
}
