import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/r.dart';

class NotificationIconWidget extends StatelessWidget {
  const NotificationIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return IconButton(
      onPressed: () {},
      icon: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.notifications,
              color: theme.colorScheme.primary,
              size: 28.sp,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.colorScheme.error,
              ),
              padding: R.spaces.tinySpaceAround,
              child: Text(
                '9+',
                style: TextStyle(
                  color: theme.colorScheme.onError,
                  fontSize: 10.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
