import 'package:flutter/material.dart';
import 'package:scale_factor/enums/platform.dart';
import 'package:scale_factor/ui/widgets/tables/android_platform_table.dart';
import 'package:scale_factor/ui/widgets/tables/both_platform_table.dart';
import 'package:scale_factor/ui/widgets/tables/ios_platform_table.dart';

class TableType extends StatelessWidget {
  TableType({@required this.platform});

  final Platform platform;

  @override
  Widget build(BuildContext context) {
    if (Platform.Both == platform) {
      return BothPlatformTable(
        value: 25.0,
      );
    } else if (Platform.Android == platform) {
      return AndroidPlatformTable(
        value: 25.0,
      );
    } else {
      return IosPlatformTable(
        value: 25,
      );
    }
    // TODO: set condition for Android and iOS table
    return Container(
      color: Colors.yellow,
      height: 200,
    );
  }
}
