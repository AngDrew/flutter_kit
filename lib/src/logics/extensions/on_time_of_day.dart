import 'package:flutter/material.dart';

extension MyTimeOfDay on TimeOfDay {
  TimeOfDay add({
    int? hour,
    int? minute,
  }) {
    return TimeOfDay(
      hour: (hour ?? 0) + this.hour,
      minute: (minute ?? 0) + this.minute,
    );
  }
}
