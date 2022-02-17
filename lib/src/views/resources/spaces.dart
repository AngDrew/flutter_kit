import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySpaces {
  const MySpaces();

  double get _none => 0;
  double get _tiny => 4.sp;
  double get _little => 8.sp;
  double get _better => 16.sp;
  double get _huge => 32.sp;
  double get _giant => 64.sp;

  /// all 0
  EdgeInsets get noSpaceAround => EdgeInsets.all(_none);

//only vertical
  /// vertical 4
  EdgeInsets get tinyVertical => EdgeInsets.symmetric(vertical: _tiny);

  /// vertical 8
  EdgeInsets get littleVertical => EdgeInsets.symmetric(vertical: _little);

  /// vertical 16
  EdgeInsets get betterVertical => EdgeInsets.symmetric(vertical: _better);

  /// vertical 32
  EdgeInsets get hugeVertical => EdgeInsets.symmetric(vertical: _huge);

  /// vertical 64
  EdgeInsets get giantVertical => EdgeInsets.symmetric(vertical: _giant);

//only horizontal
  /// vertical 4
  EdgeInsets get tinyHorizontal => EdgeInsets.symmetric(horizontal: _tiny);

  /// horizontal 8
  EdgeInsets get littleHorizontal => EdgeInsets.symmetric(horizontal: _little);

  /// horizontal 16
  EdgeInsets get betterHorizontal => EdgeInsets.symmetric(horizontal: _better);

  /// horizontal 32
  EdgeInsets get hugeHorizontal => EdgeInsets.symmetric(horizontal: _huge);

  /// vertical 64
  EdgeInsets get giantHorizontal => EdgeInsets.symmetric(horizontal: _giant);

//insets all
  /// all 4
  EdgeInsets get tinySpaceAround => EdgeInsets.all(_tiny);

  /// all 8
  EdgeInsets get littleSpaceAround => EdgeInsets.all(_little);

  /// all 16
  EdgeInsets get betterSpaceAround => EdgeInsets.all(_better);

  /// all 32
  EdgeInsets get hugeSpaceAround => EdgeInsets.all(_huge);

  /// all 64
  EdgeInsets get giantSpaceAround => EdgeInsets.all(_giant);

//only top
  /// only top 4
  EdgeInsets get tinySpaceTop => EdgeInsets.only(top: _tiny);

  /// only top 8
  EdgeInsets get littleSpaceTop => EdgeInsets.only(top: _little);

  /// only top 16
  EdgeInsets get betterSpaceTop => EdgeInsets.only(top: _better);

  /// only top 32
  EdgeInsets get hugeSpaceTop => EdgeInsets.only(top: _huge);

  /// only top 64
  EdgeInsets get giantSpaceTop => EdgeInsets.only(top: _giant);

//only bottom
  /// only bottom 4
  EdgeInsets get tinySpaceBottom => EdgeInsets.only(bottom: _tiny);

  /// only bottom 8
  EdgeInsets get littleSpaceBottom => EdgeInsets.only(bottom: _little);

  /// only bottom 16
  EdgeInsets get betterSpaceBottom => EdgeInsets.only(bottom: _better);

  /// only bottom 32
  EdgeInsets get hugeSpaceBottom => EdgeInsets.only(bottom: _huge);

  /// only bottom 64
  EdgeInsets get giantSpaceBottom => EdgeInsets.only(bottom: _giant);

//only left
  /// only left 4
  EdgeInsets get tinySpaceLeft => EdgeInsets.only(left: _tiny);

  /// only left 8
  EdgeInsets get littleSpaceLeft => EdgeInsets.only(left: _little);

  /// only left 16
  EdgeInsets get betterSpaceLeft => EdgeInsets.only(left: _better);

  /// only left 32
  EdgeInsets get hugeSpaceLeft => EdgeInsets.only(left: _huge);

  /// only left 64
  EdgeInsets get giantSpaceLeft => EdgeInsets.only(left: _giant);

//only right
  /// only right 4
  EdgeInsets get tinySpaceRight => EdgeInsets.only(right: _tiny);

  /// only right 8
  EdgeInsets get littleSpaceRight => EdgeInsets.only(right: _little);

  /// only right 16
  EdgeInsets get betterSpaceRight => EdgeInsets.only(right: _better);

  /// only right 32
  EdgeInsets get hugeSpaceRight => EdgeInsets.only(right: _huge);

  /// only right 64
  EdgeInsets get giantSpaceRight => EdgeInsets.only(right: _giant);

//widget
  /// SizedBox `width` & `height` => 4
  SizedBox get tinySpaceWidget => SizedBox(height: _tiny, width: _tiny);

  /// SizedBox `width` & `height` => 8
  SizedBox get littleSpaceWidget => SizedBox(height: _little, width: _little);

  /// SizedBox `width` & `height` => 16
  SizedBox get betterSpaceWidget => SizedBox(height: _better, width: _better);

  /// SizedBox `width` & `height` => 32
  SizedBox get hugeSpaceWidget => SizedBox(height: _huge, width: _huge);

  Divider get divider => Divider(height: _huge, thickness: 1.5);
}
// //default settings
// /// vertical 16
// EdgeInsets defaultVerticalMargin => //     EdgeInsets get.symmetric(vertical: _better);

// /// horizontal 16
// EdgeInsets defaultHorizontalMargin => //     EdgeInsets get.symmetric(horizontal: _better);

// /// all 16
// EdgeInsets defaultSpaceAroundMargin => EdgeInsets.all(16);

