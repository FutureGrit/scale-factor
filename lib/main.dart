import 'package:flutter/material.dart';

void main() {
  runApp(ScaleFactor());
}

class ScaleFactor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scale Factor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScaleFactorPage(),
    );
  }
}

class ScaleFactorPage extends StatefulWidget {
  @override
  _ScaleFactorPageState createState() => _ScaleFactorPageState();
}

class _ScaleFactorPageState extends State<ScaleFactorPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
