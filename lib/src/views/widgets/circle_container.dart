import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    Key? key,
    required this.child,
    required this.radius,
  }) : super(key: key);

  final Widget child;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     blurRadius: 8,
        //     color: shadowColor,
        //     spreadRadius: 0,
        //     offset: const Offset(0, 5),
        //   ),
        // ],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: radius,
      width: radius,
      child: child,
    );
  }
}
