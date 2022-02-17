import 'package:flutter/material.dart';

class GlobalKeyService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BuildContext? get currentContext => navigatorKey.currentState?.context;

  ScaffoldMessengerState get scaffoldState =>
      ScaffoldMessenger.of(navigatorKey.currentState!.context);
}
