import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../views/resources/r.dart';
import '../enums/theme_state.dart';
import '../view_models/base_vm.dart';

class ThemeService extends BaseViewModel {
  ThemeService() {
    init();

    lightColorScheme = const ColorScheme(
      primary: primaryLight,
      primaryContainer: primaryLightPressed,
      secondary: secondaryLightPressed,
      secondaryContainer: secondaryLightPressed,
      surface: surfaceLight,
      background: backgroundLight,
      error: errorLight,
      onPrimary: onPrimaryLight,
      onSecondary: onSecondaryLight,
      onSurface: onSurfaceLight,
      onBackground: onBackgroundLight,
      onError: onErrorLight,
      brightness: Brightness.light,
    );

    darkColorScheme = const ColorScheme(
      primary: primaryDark,
      primaryContainer: primaryDarkPressed,
      secondary: secondaryDarkPressed,
      secondaryContainer: secondaryDarkPressed,
      surface: surfaceDark,
      background: backgroundDark,
      error: errorDark,
      onPrimary: onPrimaryDark,
      onSecondary: onSecondaryDark,
      onSurface: onSurfaceDark,
      onBackground: onBackgroundDark,
      onError: onErrorDark,
      brightness: Brightness.dark,
    );

    lightTheme = ThemeData(
      // primarySwatch: CustomSwatch.customLightSwatch,
      backgroundColor: backgroundLight,
      scaffoldBackgroundColor: backgroundLight,
      primaryColor: primaryLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: surfaceLight,
        foregroundColor: onSurfaceLight,
        elevation: 0,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      colorScheme: lightColorScheme.copyWith(secondary: secondaryLight),
    );

    darkTheme = ThemeData(
      // primarySwatch: CustomSwatch.customDarkSwatch,
      backgroundColor: backgroundDark,
      scaffoldBackgroundColor: backgroundDark,
      primaryColor: primaryDark,
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundDark,
        foregroundColor: onBackgroundDark,
        elevation: 0,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      colorScheme: darkColorScheme.copyWith(secondary: secondaryDark),
    );
  }

  Future<void> init() async {
    _sharedPref = await SharedPreferences.getInstance();

    if (_sharedPref.getBool('isDarkTheme') == null) {
      await _sharedPref.setBool('isDarkTheme', false);
    }

    if (_sharedPref.getBool('isDarkTheme') != null &&
        _sharedPref.getBool('isDarkTheme')!) {
      _currentTheme = ThemeState.dark;
    } else {
      _currentTheme = ThemeState.light;
    }

    refreshState();
  }

  late final SharedPreferences _sharedPref;

  ThemeState _currentTheme = ThemeState.light;
  ThemeState get currentTheme => _currentTheme;

  ThemeMode get getThemeMode => _themeMap[currentTheme] ?? ThemeMode.system;

  final Map<ThemeState, ThemeMode> _themeMap = <ThemeState, ThemeMode>{
    ThemeState.dark: ThemeMode.dark,
    ThemeState.light: ThemeMode.light,
  };

  late final ThemeData lightTheme;
  late final ThemeData darkTheme;

  late final ColorScheme lightColorScheme;
  late final ColorScheme darkColorScheme;

  void toggleThemeState() {
    if (_currentTheme == ThemeState.light) {
      _currentTheme = ThemeState.dark;
      _sharedPref.setBool('isDarkTheme', true);
    } else if (_currentTheme == ThemeState.dark) {
      _currentTheme = ThemeState.light;
      _sharedPref.setBool('isDarkTheme', false);
    }
    refreshState();
  }

  bool? get isDarkTheme => _sharedPref.getBool('isDarkTheme');
}
