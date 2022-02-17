import 'package:flutter/material.dart';

const MaterialColor customswatch =
    MaterialColor(_customswatchPrimaryValue, <int, Color>{
  50: Color(0xFFFEFAF7),
  100: Color(0xFFFBF2EC),
  200: Color(0xFFF9EAE0),
  300: Color(0xFFF7E2D3),
  400: Color(0xFFF5DBC9),
  500: Color(_customswatchPrimaryValue),
  600: Color(0xFFF1D0BA),
  700: Color(0xFFEFCAB2),
  800: Color(0xFFEDC4AA),
  900: Color(0xFFEABA9C),
});
const int _customswatchPrimaryValue = 0xFFF3D5C0;

const MaterialColor customswatchAccent =
    MaterialColor(_customswatchAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_customswatchAccentValue),
  400: Color(0xFFFFFFFF),
  700: Color(0xFFFFFFFF),
});
const int _customswatchAccentValue = 0xFFFFFFFF;
