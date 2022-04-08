import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/r.dart';

enum LeadingType {
  none,
  back,
  drawer,
  custom,
}

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    Key? key,
    this.actions,
    this.title = '',
    this.titleWidget,
    this.showTitle = true,
    this.leadingType = LeadingType.none,
    this.color,
    this.customLeading,
    this.tab,
  }) : super(key: key);

  /// control the widget action on right side of the appbar
  final List<Widget>? actions;

  /// control the title text
  final String title;

  final Widget? titleWidget;

  /// control to show title on the appbar
  final bool showTitle;

  final Widget? customLeading;

  final LeadingType leadingType;

  final Color? color;

  final PreferredSizeWidget? tab;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    Widget? leading;
    switch (leadingType) {
      case LeadingType.back:
        if (Navigator.canPop(context)) {
          leading = IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left_rounded,
              color: theme.colorScheme.onBackground,
              size: 16.sp,
            ),
            onPressed: () => Navigator.pop(context),
          );
        } else {
          leading = const SizedBox();
        }
        break;
      case LeadingType.drawer:
        leading = IconButton(
          icon: Icon(
            Icons.menu,
            color: theme.colorScheme.onBackground,
          ),
          onPressed: () => Navigator.pop(context),
        );
        break;
      case LeadingType.none:
        leading = const SizedBox();
        break;
      case LeadingType.custom:
        assert(customLeading != null);
        leading = customLeading;
        break;
      default:
        leading = const SizedBox();
    }

    return AppBar(
      actions: actions,
      title: showTitle
          ? titleWidget ??
              Text(
                title,
                // style: R.styles.titleFont
                //     .copyWith(color: theme.colorScheme.onBackground),
              )
          : null,
      centerTitle: true,
      backgroundColor: color ?? Colors.transparent,
      elevation: 0,
      // close the leading button
      leading: leading,
      bottom: tab,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
