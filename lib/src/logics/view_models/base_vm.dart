import 'package:flutter/foundation.dart';

import '../enums/app_state.dart';

class BaseViewModel extends ChangeNotifier {
  AppState _state = AppState.idle;

  void setState(AppState newState) {
    _state = newState;
    notifyListeners();
  }

  void setStateBusy() {
    _state = AppState.busy;
    notifyListeners();
  }

  void setStateIdle() {
    _state = AppState.idle;
    notifyListeners();
  }

  void refreshState() {
    notifyListeners();
  }

  bool get isStateBusy => _state != AppState.idle;
}
