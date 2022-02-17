import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logics/utils/custom_border_radius.dart';
import '../../resources/r.dart';

class RoundedElevatedButton extends StatelessWidget {
  const RoundedElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.color,
    this.backgroundColor,
    this.splashColor,
    this.isIconOnRight = true,
    this.elevation = 0,
    this.padding,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isIconOnRight;
  final Color? color;
  final Color? backgroundColor;
  final Color? splashColor;
  final double elevation;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final Widget child = Text(
      text,
      style: R.styles.titleFont.copyWith(
        color: color ?? theme.colorScheme.onPrimary,
      ),
    );

    final Widget iconWgt = Icon(
      icon,
      size: 16.sp,
      color: color ?? theme.colorScheme.onPrimary,
    );

    return ElevatedButton(
      child: Padding(
        padding: padding ?? R.spaces.littleSpaceAround,
        child: icon != null
            ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  if (icon != null && !isIconOnRight) iconWgt,
                  child,
                  if (icon != null && isIconOnRight) iconWgt,
                ],
              )
            : child,
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: CustomBorderRadius.all(),
        ),
      ).copyWith(
        backgroundColor: MaterialStateProperty.all<Color>(
          color ?? theme.colorScheme.primaryVariant,
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          splashColor ?? theme.colorScheme.primaryVariant,
        ),
      ),
    );
  }
}
