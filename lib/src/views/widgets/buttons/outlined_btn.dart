import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logics/utils/custom_border_radius.dart';
import '../../resources/r.dart';
import '../custom_indicator.dart';

class RoundedOutlinedButton extends StatelessWidget {
  const RoundedOutlinedButton({
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
    this.isLoading = false,
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
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final Widget child = Text(
      text,
      style: R.styles.titleFont.copyWith(
        color: color ?? theme.colorScheme.primary,
      ),
    );

    const Widget loadingWidget = SizedBox(
      height: 32,
      width: 32,
      child: CustomIndicator(),
    );

    final Widget iconWgt = Icon(
      icon,
      size: 16.sp,
      color: color ?? theme.colorScheme.primary,
    );

    return OutlinedButton(
      onPressed: isLoading ? null : onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: CustomBorderRadius.all(),
        ),
        side: BorderSide(
          color: color ?? theme.colorScheme.primary,
        ),
      ).copyWith(
        overlayColor: MaterialStateProperty.all<Color>(
          splashColor ?? theme.colorScheme.primaryContainer,
        ),
      ),
      child: Padding(
        padding: padding ?? R.spaces.littleSpaceAround,
        child: Builder(
          builder: (_) {
            if (isLoading) {
              return loadingWidget;
            } else if (icon != null) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  if (icon != null && !isIconOnRight) iconWgt,
                  child,
                  if (icon != null && isIconOnRight) iconWgt,
                ],
              );
            }
            return child;
          },
        ),
      ),
    );
  }
}
