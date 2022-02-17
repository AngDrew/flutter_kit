import 'package:fkit/src/logics/services/global_key_service.dart';
import 'package:fkit/src/logics/services/locator.dart';
import 'package:fkit/src/views/resources/r.dart';
import 'package:flutter/material.dart';

import 'custom_border_radius.dart';

final GlobalKeyService _globalKeyService = locator<GlobalKeyService>();

Future<dynamic> showMyDialog(
  Widget dialog, {
  bool dismissible = true,
}) async {
  if (_globalKeyService.currentContext != null) {
    return await showDialog<dynamic>(
      context: _globalKeyService.currentContext!,
      builder: (BuildContext context) => dialog,
      barrierDismissible: dismissible,
    ).then<dynamic>(
      (dynamic value) {
        // _dialogIsOpening = false;
        return value;
      },
    );
  } else {
    print('no context');
  }
}

/// warning snackbar will show red snackbar with the `message`
Future<dynamic> showWarningSnackBar(String message) async {
  if (_globalKeyService.currentContext != null) {
    final ColorScheme csc =
        Theme.of(_globalKeyService.currentContext!).colorScheme;
    locator<GlobalKeyService>().scaffoldState.removeCurrentSnackBar();
    _globalKeyService.scaffoldState.showSnackBar(
      SnackBar(
        backgroundColor: csc.error,
        content: Text(
          message,
          style: R.styles.normalFont.copyWith(color: csc.onError),
        ),
        margin: R.spaces.betterSpaceAround,
        shape: RoundedRectangleBorder(
          borderRadius: CustomBorderRadius.all(),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  } else {
    print('no context');
  }
}

/// info snackbar will show surface color snackbar with the `message`
Future<dynamic> showInfoSnackBar(String message) async {
  if (_globalKeyService.currentContext != null) {
    final ColorScheme csc =
        Theme.of(_globalKeyService.currentContext!).colorScheme;
    locator<GlobalKeyService>().scaffoldState.removeCurrentSnackBar();
    _globalKeyService.scaffoldState.showSnackBar(
      SnackBar(
        backgroundColor: csc.surface,
        content: Text(
          message,
          style: R.styles.normalFont.copyWith(color: csc.onSurface),
        ),
        margin: R.spaces.betterSpaceAround,
        shape: RoundedRectangleBorder(
          borderRadius: CustomBorderRadius.all(),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  } else {
    print('no context');
  }
}
