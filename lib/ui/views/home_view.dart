import 'package:flutter/material.dart';
import 'package:scale_factor/ui/widgets/custom_app_bar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(106.0),
        child: CustomAppBar(),
      ),
      body: Container(
        color: Colors.yellow,
        // TODO 1: Create input section
        // TODO 1.1: Implement "Platform" tabs
        // TODO 1.2: Implement "Value" edit text
        // TODO 1.3: Implement "Unit" and "Baseline" dropdown

        // TODO 2: Create output section
      ),
    );
  }
}
