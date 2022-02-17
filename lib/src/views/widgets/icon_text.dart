import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/r.dart';

class IconText extends StatelessWidget {
  const IconText({
    Key? key,
    required this.icon,
    required this.text,
    this.isBold = false,
    this.isExpanded = false,
    this.color,
    this.style,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final bool isBold;
  final Color? color;
  final TextStyle? style;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          icon,
          size: 20.sp,
          color: color ?? theme.colorScheme.onSurface,
        ),
        R.spaces.tinySpaceWidget,
        if (isExpanded)
          Expanded(
            child: Text(
              text,
              style: style?.copyWith(
                    fontWeight: isBold ? FontWeight.bold : null,
                  ) ??
                  R.styles.normalFont.copyWith(
                    color: color ?? theme.colorScheme.onSurface,
                    fontWeight: isBold ? FontWeight.bold : null,
                  ),
            ),
          ),
        if (!isExpanded)
          Text(
            text,
            style: style?.copyWith(
                  fontWeight: isBold ? FontWeight.bold : null,
                ) ??
                R.styles.normalFont.copyWith(
                  color: color ?? theme.colorScheme.onSurface,
                  fontWeight: isBold ? FontWeight.bold : null,
                ),
          )
      ],
    );
  }
}
