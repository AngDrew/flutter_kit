import 'package:flutter/material.dart';

import 'flavors.dart';
import 'src/app.dart';
import 'src/logics/services/config_service.dart';
import 'src/logics/services/language_service.dart';
import 'src/logics/services/locator.dart';
import 'src/logics/services/theme_service.dart';
import 'src/logics/utils/load_image.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  F.appFlavor = Flavor.AppOne;
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final ConfigService configService = ConfigService(
    language: LanguageService(),
    theme: ThemeService(),
  );

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  // await configService.loadSettings();

  setupLocator();

  // await loadImage(
  //   const AssetImage(''),
  //   // TODO(Anyone): loading splash image before anything else
  // );

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp(configService: configService));
}
