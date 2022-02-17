import 'package:flutter/material.dart';

import '../../../localization/app_localizations.dart';
import '../../../logics/view_models/base_vm.dart';
import '../../../models/navbar_m.dart';

class LandingViewModel extends BaseViewModel {
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;

  PageController? _pageController;
  // AnimationController _animationController;

  void setController(PageController? pc) {
    _pageController = pc;
  }

  Future<void> moveTo(int index) async {
    // final int duration = (_tabIndex - index).abs();
    _pageController?.jumpToPage(index);

    // Currently disable the animation because of the
    // unresolved performance issue.

    // await _pageController?.animateToPage(
    //   index,
    //   duration: const Duration(milliseconds: 150),
    //   curve: Curves.ease,
    // );
  }

  void setTabIndex(int index) {
    _tabIndex = index;
    refreshState();
  }

  // final List<Widget> _screens = <Widget>[
  //   Container(
  //     color: Colors.transparent,
  //     // color: Colors.red,
  //   ),
  //   Container(
  //     color: Colors.transparent,
  //     // color: Colors.green,
  //   ),
  //   Container(
  //     color: Colors.transparent,
  //     // color: Colors.blue,
  //   ),
  // ];
  // List<Widget> get screens => List<Widget>.unmodifiable(_screens);

  final List<NavbarModel> _navbarItems = <NavbarModel>[
    const NavbarModel(
      icon: Icons.home_rounded,
      title: 'Dashboard',
    ),
    const NavbarModel(
      icon: Icons.call_rounded,
      title: 'Customer Service',
    ),
    const NavbarModel(
      icon: Icons.person_rounded,
      title: 'Profile',
    ),
    // const NavbarModel(
    //   icon: Icons.more_horiz_rounded,
    //   title: 'More',
    // ),
  ];
  List<NavbarModel> get navbarItems =>
      List<NavbarModel>.unmodifiable(_navbarItems);

  List<String> titleNames = <String>[];
  void initLanguage(AppLocalizations localizations) {
    // localizations.
  }
}
