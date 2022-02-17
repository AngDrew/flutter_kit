import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'r.dart';

class MyStyles {
  const MyStyles();

  double get _small => 12.sp;
  double get _regular => 14.sp;
  double get _medium => 16.sp;
  double get _large => 18.sp;
  double get _extraLarge => 20.sp;

//-------------------------------------------------
  TextStyle get _script => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: _small,
        ),
      );
//-------------------------------------------------
  TextStyle get _normal => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: _regular,
        ),
      );
//-------------------------------------------------
  TextStyle get _subTitle => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: _medium,
        ),
      );
//-------------------------------------------------
  TextStyle get _title => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: _medium,
          fontWeight: FontWeight.w500,
        ),
      );
//-------------------------------------------------
  TextStyle get _subHeader => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: _large,
          fontWeight: FontWeight.w500,
        ),
      );
//-------------------------------------------------
  TextStyle get _header => GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: _extraLarge,
          fontWeight: FontWeight.bold,
        ),
      );
//-------------------------------------------------

  TextStyle get scriptFont => _script.copyWith(color: errorLight);
  TextStyle get normalFont => _normal.copyWith(color: errorLight);
  TextStyle get subTitleFont => _subTitle.copyWith(color: errorLight);
  TextStyle get titleFont => _title.copyWith(color: errorLight);
  TextStyle get subHeaderFont => _subHeader.copyWith(color: errorLight);
  TextStyle get headerFont => _header.copyWith(color: errorLight);
}
