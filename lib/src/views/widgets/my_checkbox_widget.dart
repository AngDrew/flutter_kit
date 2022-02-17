import 'package:flutter/material.dart';

import '../../logics/utils/custom_border_radius.dart';
import '../resources/r.dart';

class MyCheckboxWidget extends StatelessWidget {
  const MyCheckboxWidget({
    Key? key,
    this.onChanged,
    required this.label,
    this.value = false,
  }) : super(key: key);

  final void Function(bool? val)? onChanged;
  final String label;
  final bool value;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return CheckboxListTile(
      value: value,
      dense: true,
      shape: RoundedRectangleBorder(
        borderRadius: CustomBorderRadius.all(),
      ),
      activeColor: theme.colorScheme.primary,
      checkColor: theme.colorScheme.onPrimary,
      contentPadding: R.spaces.noSpaceAround,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: onChanged,
      title: Text(
        label,
        style: R.styles.normalFont.copyWith(
          color: theme.colorScheme.onBackground,
        ),
      ),
    );
  }
}
