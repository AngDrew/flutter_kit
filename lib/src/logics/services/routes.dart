import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../views/mobile/landing/landing_v.dart';
import '../../views/mobile/landing/landing_vm.dart';
import '../../views/mobile/splash/splash_v.dart';
import '../../views/mobile/splash/splash_vm.dart';
import '../constants/routes_c.dart';

/// use the constants for route naming to make development easier
/// and avoid human error
Route<dynamic> generateRoute(RouteSettings settings) {
  final Map<String, Route<dynamic>> routeMap = <String, Route<dynamic>>{
    rootRoute: MaterialPageRoute<dynamic>(
      settings: settings,
      builder: (BuildContext context) =>
          ChangeNotifierProvider<SplashViewModel>(
        create: (BuildContext context) => SplashViewModel(),
        builder: (BuildContext context, Widget? child) => const SplashScreen(),
      ),
    ),
    landingRoute: MaterialPageRoute<dynamic>(
      settings: settings,
      builder: (BuildContext context) => MultiProvider(
        providers: <SingleChildWidget>[
          ChangeNotifierProvider<LandingViewModel>(
            create: (BuildContext context) => LandingViewModel(),
          ),
        ],
        builder: (_, __) => const LandingScreen(),
      ),
    ),
  };

  return routeMap[settings.name] ??
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const Scaffold(
          body: Center(child: Text('Invalid Route')),
        ),
      );
}
