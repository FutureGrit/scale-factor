import 'package:flutter/material.dart';

import 'package:scale_factor/utils/ui_utils.dart';

class ValueInput extends StatefulWidget {
  @override
  _ValueInputState createState() => _ValueInputState();
}

class _ValueInputState extends State<ValueInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' VALUE',
          style: Theme.of(context).textTheme.headline6,
        ),
        verticalSpaceSmall,
        TextField(
          onTap: () {
            //TODO: Update table
          },
          //TODO: set length to 6
          style: Theme.of(context).textTheme.headline3,
          maxLines: 1,
          autofocus: false,
          autocorrect: false,
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
