import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:scale_factor/services/home_view_service.dart';
import 'package:scale_factor/utils/methods.dart';
import '../custom_icons.dart';
import 'package:scale_factor/utils/ui_utils.dart';

class PlatformType extends StatefulWidget {
  @override
  _PlatformTypeState createState() => _PlatformTypeState();
}

class _PlatformTypeState extends State<PlatformType> {
  List<bool> isSelected;
  HomeViewService platformType;

  @override
  void initState() {
    platformType = Provider.of<HomeViewService>(context, listen: false);
    isSelected = platformType.isSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' PLATFORM',
          style: Theme.of(context).textTheme.headline6,
        ),
        kVerticalSpaceSmall,
        ToggleButtons(
          constraints: BoxConstraints.expand(
            width: ((MediaQuery.of(context).size.width) -
                    ((isSelected.length + 1) * kBorderWidthNormal) -
                    (kPaddingLarge * 2)) /
                isSelected.length,
            height: Methods.getHeight(divideBy: 13.5),
          ),
          children: [
            Text(
              'BOTH',
            ),
            Icon(
              CustomIcons.android,
              size: kToggleButtonIconSize,
            ),
            Icon(
              CustomIcons.ios,
              size: kToggleButtonIconSize,
            )
          ],
          isSelected: isSelected,
          onPressed: (int index) {
            platformType.updateTableType(index);
          },
        ),
      ],
    );
  }
}
