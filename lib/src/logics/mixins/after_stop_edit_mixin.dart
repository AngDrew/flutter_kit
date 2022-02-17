import 'dart:async';

mixin AfterStopEditMixin {
  late Timer _timer;
  int? _tickAmount;
  void Function()? onStopEdit;

  /// decrease 1 `tick` every `tickDuration` milliseconds
  /// and run `onStopEdit()` after `tick <= 0`
  void setTimer({int tickDuration = 500, int tick = 1}) {
    _tickAmount = tick;
    if (_timer.isActive) {
      _timer.cancel();
    }
    _timer = Timer.periodic(
      Duration(milliseconds: tickDuration),
      (Timer timer) {
        if (_tickAmount! <= 0) {
          if (onStopEdit != null) {
            onStopEdit!();
          }
          timer.cancel();
        } else {
          _tickAmount = _tickAmount! - 1;
        }
      },
    );
  }
}
