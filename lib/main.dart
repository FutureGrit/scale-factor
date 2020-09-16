import 'package:flutter/material.dart';
import 'package:scale_factor/input_page.dart';

void main() {
  runApp(ScaleFactor());
}

class ScaleFactor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.purple,
      title: 'Scale Factor',
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFFCF6F5),
        scaffoldBackgroundColor: Color(0xCCFCF6F5),
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(
        // To set default background color to white
        color: Colors.white,
        child: InputPage(),
      ),
    );
  }
}
