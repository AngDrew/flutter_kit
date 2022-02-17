import 'package:flutter/services.dart';

import 'dialog_helper.dart';

void copyToClipboard(String value) {
  showInfoSnackBar('Copied to clipboard');

  Clipboard.setData(
    ClipboardData(
      text: value,
    ),
  );
}
