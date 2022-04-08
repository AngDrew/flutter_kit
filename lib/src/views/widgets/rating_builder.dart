import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/r.dart';

class RatingBuilder extends StatelessWidget {
  const RatingBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Row(
      children: <Widget>[
        ...List<Widget>.generate(
          5,
          (int index) => Icon(
            Icons.star,
            color: Colors.yellow,
            size: 14.sp,
          ),
        ),
        R.spaces.tinySpaceWidget,
        Text(
          '5.0',
          // style: R.styles.normalFont.copyWith(
          //   color: theme.colorScheme.onBackground,
          //   fontWeight: FontWeight.bold,
          // ),
        ),
      ],
    );
  }
}
