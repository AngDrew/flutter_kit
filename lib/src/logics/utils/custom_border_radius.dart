import 'package:flutter/widgets.dart';

import '../enums/edges_radius.dart';

class CustomBorderRadius extends BorderRadius {
  /// default value of radius
  static const double _radiusAmount = 8;

  /// default radius based on default radius value
  static const Radius _defaultRadi = Radius.circular(_radiusAmount);

  /// BorderRadius shortcut of all `_radiusAmount` round
  CustomBorderRadius.all() : super.circular(_radiusAmount);

  /// BorderRadius shortcut of only specific `edges`
  const CustomBorderRadius.only(EdgesRadius edges)
      : super.only(
          topLeft: edges == EdgesRadius.topLeft ? _defaultRadi : Radius.zero,
          topRight: edges == EdgesRadius.topRight ? _defaultRadi : Radius.zero,
          bottomLeft:
              edges == EdgesRadius.bottomLeft ? _defaultRadi : Radius.zero,
          bottomRight:
              edges == EdgesRadius.bottomRight ? _defaultRadi : Radius.zero,
        );

  /// BorderRadius shortcut of all except `edges`
  const CustomBorderRadius.except(EdgesRadius edges)
      : super.only(
          topLeft: edges == EdgesRadius.topLeft ? Radius.zero : _defaultRadi,
          topRight: edges == EdgesRadius.topRight ? Radius.zero : _defaultRadi,
          bottomLeft:
              edges == EdgesRadius.bottomLeft ? Radius.zero : _defaultRadi,
          bottomRight:
              edges == EdgesRadius.bottomRight ? Radius.zero : _defaultRadi,
        );

  /// BorderRadius shortcut of vertical, either top or bottom `edges`
  const CustomBorderRadius.vertical(EdgesRadius edges)
      : super.vertical(
          top: edges == EdgesRadius.top ? _defaultRadi : Radius.zero,
          bottom: edges == EdgesRadius.bottom ? _defaultRadi : Radius.zero,
        );

  /// BorderRadius shortcut of vertical, either left or right `edges`
  const CustomBorderRadius.horizontal(EdgesRadius edges)
      : super.horizontal(
          left: edges == EdgesRadius.left ? _defaultRadi : Radius.zero,
          right: edges == EdgesRadius.right ? _defaultRadi : Radius.zero,
        );
}
