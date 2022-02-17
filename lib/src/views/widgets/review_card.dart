import 'package:flutter/material.dart';

import '../resources/r.dart';
import 'rating_builder.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: R.spaces.betterSpaceBottom,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CircleAvatar(),
              R.spaces.betterSpaceWidget,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Taylow Swift',
                      style: R.styles.normalFont.copyWith(
                        color: theme.colorScheme.onBackground,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    R.spaces.tinySpaceWidget,
                    const RatingBuilder(),
                  ],
                ),
              ),
            ],
          ),
          const Text(
            // ignore: lines_longer_than_80_chars
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae facilisis sapien. Fusce et varius ipsum. Sed elementum leo nibh. In risus ante, semper non lacinia et, molestie et justo. Fusce sit amet dignissim dui. Duis feugiat enim dui, ut euismod metus lobortis quis. Praesent nec magna in tortor laoreet dictum sed eu sapien. Nullam ut magna aliquam, ornare quam vel, commodo eros. Vestibulum malesuada lectus lacus. Sed quis luctus leo. Praesent scelerisque orci ege',
          ),
        ],
      ),
    );
  }
}
