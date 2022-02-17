import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../flavors.dart';
import 'localization/app_localizations.dart';
import 'logics/constants/routes_c.dart';
import 'logics/services/config_service.dart';
import 'logics/services/global_key_service.dart';
import 'logics/services/locator.dart';
import 'logics/services/routes.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.configService,
  }) : super(key: key);

  final ConfigService configService;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: configService,
      builder: (BuildContext context, Widget? child) {
        return ScreenUtilInit(
          // iphone 12 pro max resolution
          designSize: const Size(390, 844),
          minTextAdapt: true,
          builder: () => MaterialApp(
            onGenerateTitle: (BuildContext context) => F.title,
            restorationScopeId: 'app',
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const <Locale>[
              Locale('en', ''), // English, no country code
              // Locale('id', ''), // Indonesia, no country code
            ],
            locale: configService.language.locale,
            theme: configService.theme.lightTheme,
            darkTheme: configService.theme.darkTheme,
            themeMode: configService.theme.getThemeMode,
            initialRoute: rootRoute,
            onGenerateRoute: generateRoute,
            navigatorKey: locator<GlobalKeyService>().navigatorKey,
          ),
        );
      },
    );
  }
}
