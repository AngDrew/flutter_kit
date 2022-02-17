import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator();
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return CircularProgressIndicator(
      backgroundColor: theme.colorScheme.background,
      valueColor: AlwaysStoppedAnimation<Color>(
          Theme.of(context).colorScheme.onBackground),
    );
  }
}
