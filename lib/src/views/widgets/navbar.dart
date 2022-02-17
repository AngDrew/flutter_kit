import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../loader.dart';
import '../mobile/landing/landing_vm.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      child: Loader<LandingViewModel>(
        onReady: null,
        // (LandingViewModel? val) async {},
        builder: (
          BuildContext context,
          LandingViewModel viewModel,
          Widget? _,
        ) =>
            BottomNavigationBar(
          backgroundColor: theme.colorScheme.surface,
          elevation: 0,
          selectedItemColor: theme.primaryColor,
          onTap: viewModel.moveTo,
          currentIndex: viewModel.tabIndex,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          items: List<BottomNavigationBarItem>.generate(
            viewModel.navbarItems.length,
            (int index) {
              if (viewModel.tabIndex == index) {
                return BottomNavigationBarItem(
                  icon: Icon(
                    viewModel.navbarItems[index].icon,
                    color: theme.colorScheme.primary,
                    size: 28.sp,
                  ),
                  label: '•',
                  tooltip: viewModel.navbarItems[index].title,
                );
              }
              return BottomNavigationBarItem(
                icon: Icon(
                  viewModel.navbarItems[index].icon,
                  color: theme.colorScheme.secondary,
                  size: 20.sp,
                ),
                label: '•',
                tooltip: viewModel.navbarItems[index].title,
              );
            },
          ),
        ),
      ),
    );
  }
}
