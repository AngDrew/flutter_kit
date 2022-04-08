import 'package:flutter/material.dart';

import '../resources/r.dart';

class ColorfulTextActionWidget extends StatelessWidget {
  const ColorfulTextActionWidget({
    Key? key,
    this.color,
    required this.firstPhrase,
    required this.coloredPhrase,
    required this.onPressed,
  }) : super(key: key);

  final Color? color;
  final String firstPhrase;
  final String coloredPhrase;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: onPressed,
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: firstPhrase,
              // style: R.styles.normalFont
              //     .copyWith(color: theme.colorScheme.onBackground),
            ),
            TextSpan(
              text: coloredPhrase,
              // style: R.styles.normalFont.copyWith(
              //   color: color ?? theme.colorScheme.error,
              //   fontWeight: FontWeight.bold,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
