import 'package:flutter/material.dart';

mixin LoadingBuilderMixin {
  Widget imageLoadingBuilder(BuildContext context, Widget child,
      ImageChunkEvent? loadingProgress, double size) {
    if (loadingProgress != null) {
      return SizedBox(
        height: size,
        width: size,
        child: Center(
          child: CircularProgressIndicator(
            value: loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!,
          ),
        ),
      );
    }
    return child;
  }
}
