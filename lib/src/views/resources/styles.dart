import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStyles {
  const MyStyles();

  double get _small => 12.sp;
  double get _regular => 16.sp;
  double get _medium => 20.sp;
  double get _large => 24.sp;
  double get _extraLarge => 28.sp;
  double get _jumbo => 30.sp;
  double get _tiny => 34.sp;

  // Text Styles

  TextStyle get heading1Style => TextStyle(
        fontSize: _tiny,
        fontWeight: FontWeight.w400,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  TextStyle get heading2Style => TextStyle(
        fontSize: _extraLarge,
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  TextStyle get heading3Style => TextStyle(
        fontSize: _large,
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  TextStyle get headlineStyle => TextStyle(
        fontSize: _jumbo,
        fontWeight: FontWeight.w700,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  TextStyle get bodyStyle => TextStyle(
        fontSize: _regular,
        fontWeight: FontWeight.w400,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  TextStyle get subheadingStyle => TextStyle(
        fontSize: _medium,
        fontWeight: FontWeight.w400,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  TextStyle get captionStyle => TextStyle(
        fontSize: _small,
        fontWeight: FontWeight.w400,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  TextTheme get textTheme => TextTheme(
        bodyMedium: bodyStyle,
        bodyLarge: subheadingStyle,
        bodySmall: captionStyle,
        bodyText1: bodyStyle,
        bodyText2: bodyStyle,
        caption: captionStyle,
        button: subheadingStyle,
        displayMedium: bodyStyle,
        displayLarge: subheadingStyle,
        displaySmall: captionStyle,
        headline1: heading1Style,
        headline2: heading2Style,
        headline3: heading3Style,
        headline4: subheadingStyle,
        headline5: bodyStyle,
        headline6: captionStyle,
        headlineLarge: heading1Style,
        headlineMedium: heading2Style,
        headlineSmall: heading3Style,
        labelMedium: bodyStyle,
        labelLarge: subheadingStyle,
        labelSmall: captionStyle,
        titleMedium: bodyStyle,
        titleLarge: subheadingStyle,
        titleSmall: captionStyle,
        subtitle1: bodyStyle,
        subtitle2: bodyStyle,
        overline: bodyStyle,
      );

// //-------------------------------------------------
//   TextStyle get script => GoogleFonts.roboto(textStyle: _captionStyle);
// //-------------------------------------------------
//   TextStyle get normal => GoogleFonts.roboto(textStyle: _bodyStyle);
// //-------------------------------------------------
//   TextStyle get subTitle => GoogleFonts.roboto(textStyle: _subheadingStyle);
// //-------------------------------------------------
//   TextStyle get title => GoogleFonts.roboto(textStyle: _subheadingStyle);
// //-------------------------------------------------
//   TextStyle get subHeader => GoogleFonts.roboto(textStyle: _subheadingStyle);
// //-------------------------------------------------
//   TextStyle get header => GoogleFonts.roboto(textStyle: _heading2Style);
// //-------------------------------------------------

  // TextStyle get scriptFont => _script;
  // TextStyle get normalFont => _normal;
  // TextStyle get subTitleFont => _subTitle;
  // TextStyle get titleFont => _title;
  // TextStyle get subHeaderFont => _subHeader;
  // TextStyle get headerFont => _header;
}
