import 'package:flutter/material.dart';

import '../../logics/utils/custom_border_radius.dart';
import '../resources/r.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    required this.child,
    this.bgColor,
    this.outterPadding,
    this.innerPadding,
    this.radius = 16,
    this.maxHeight,
  });
  final Widget child;
  final Color? bgColor;
  final EdgeInsetsGeometry? outterPadding;
  final EdgeInsetsGeometry? innerPadding;
  final double radius;
  final double? maxHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: maxHeight,
      child: Padding(
        padding: outterPadding ?? R.spaces.betterSpaceAround,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: bgColor ?? whiteColor,
            borderRadius: CustomBorderRadius.all(),
          ),
          child: Padding(
            padding: innerPadding ?? R.spaces.betterSpaceAround,
            child: child,
          ),
        ),
      ),
    );
  }
}
