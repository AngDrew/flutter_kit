import 'package:flutter/services.dart';

void copyToClipboard(String value) {
  // TODO(Anyone): snackbar to show successfully copied the `value`

  Clipboard.setData(
    ClipboardData(
      text: value,
    ),
  );
}
