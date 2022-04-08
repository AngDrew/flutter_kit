import 'package:flutter/material.dart';

import '../resources/r.dart';
import 'buttons/elevated_btn.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({
    Key? key,
    this.title,
    required this.body,
    this.button,
  }) : super(key: key);

  final String? title;
  final String body;
  final String? button;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Text(
        title ?? 'Something went wrong',
        // style: R.styles.titleFont.copyWith(
        //   color: Theme.of(context).colorScheme.onSurface,
        // ),
      ),
      content: Text(
        body,
        // style: R.styles.normalFont.copyWith(
        //   color: Theme.of(context).colorScheme.onSurface,
        // ),
      ),
      actions: <Widget>[
        RoundedElevatedButton(
          text: button ?? 'Okay',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
