import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/enums/platform.dart';
import 'package:scale_factor/services/home_view_service.dart';
import 'package:scale_factor/ui/widgets/tables/android_platform_table.dart';
import 'package:scale_factor/ui/widgets/tables/both_platform_table.dart';
import 'package:scale_factor/ui/widgets/tables/ios_platform_table.dart';

class ResultTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var selectedPlatform = Provider.of<HomeViewService>(context, listen: false)
        .selectedPlatform
        .platform;

    if (selectedPlatform == Platform.Both) {
      return BothPlatformTable(
        // TODO: Get value from  TextField
        value: 25.0,
      );
    } else if (selectedPlatform == Platform.Android) {
      return AndroidPlatformTable(
        value: 25.0,
      );
    } else {
      return IosPlatformTable(
        value: 25,
      );
    }
  }
}
