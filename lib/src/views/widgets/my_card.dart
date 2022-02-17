import 'package:flutter/material.dart';

import '../../logics/utils/custom_border_radius.dart';
import '../resources/r.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.child,
    this.verticalPadding = EdgeInsets.zero,
    this.horizontalPadding = EdgeInsets.zero,
    this.padding,
    this.elevation = 0,
    this.margin,
    this.borderRadius,
    this.color,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets verticalPadding;
  final EdgeInsets horizontalPadding;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double elevation;
  final CustomBorderRadius? borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Card(
      margin: margin ?? R.spaces.noSpaceAround,
      elevation: elevation,
      color: color ?? theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? CustomBorderRadius.all(),
      ),
      child: Padding(
        padding: (padding ?? R.spaces.littleSpaceAround) +
            verticalPadding +
            horizontalPadding,
        child: child,
      ),
    );
  }
}
