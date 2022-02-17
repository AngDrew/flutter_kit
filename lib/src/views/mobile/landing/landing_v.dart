import 'package:fkit/src/logics/services/global_key_service.dart';
import 'package:fkit/src/logics/services/locator.dart';
import 'package:fkit/src/logics/utils/dialog_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../flavors.dart';
import '../../../logics/utils/custom_border_radius.dart';
import '../../resources/r.dart';
import '../../widgets/appbar.dart';
import '../../widgets/navbar.dart';
import 'landing_vm.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  PageController? pageController;
  // AnimationController fabAnimationController;
  @override
  void initState() {
    //
    pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );
    // fabAnimationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 200),
    // );

    SchedulerBinding.instance?.addPostFrameCallback((_) {
      // final UserModel user = context.read<SplashViewModel>().user;
      context.read<LandingViewModel>().setController(
            pageController,
          );

      context.read<LandingViewModel>().moveTo(0);

      //

      // if (user != null) {
      //   context.read<AuthViewModel>().setUser(user);
      // }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }

  DateTime? currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return WillPopScope(
      onWillPop: () async {
        final DateTime now = DateTime.now();

        if (currentBackPressTime == null ||
            now.difference(currentBackPressTime!) >
                const Duration(seconds: 2)) {
          currentBackPressTime = now;

          showInfoSnackBar('Press back again to confirm exit');

          return false;
        }
        return true;
      },
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Scaffold(
          // floatingActionButton: Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     FloatingActionButton(
          //       onPressed: () {
          //         locator<GlobalKeyService>().showInfoSnackBar('message');
          //       },
          //     ),
          //     R.spaces.betterSpaceWidget,
          //     FloatingActionButton(
          //       backgroundColor: Colors.red,
          //       onPressed: () {
          //         locator<GlobalKeyService>().showWarningSnackBar('message');
          //       },
          //     ),
          //   ],
          // ),
          appBar: MyAppBar(
            color: theme.colorScheme.primary,
            title: F.title,
            titleWidget: Image.asset(
              'Awesome Title', // TODO(Anyone): add image assets here
              color: Colors.white,
              fit: BoxFit.contain,
              height: 32.sp,
            ),
            // notification button currently are disabled. Not urgent.
            actions: const <Widget>[],
          ),
          body: Consumer<LandingViewModel>(
            builder: (
              BuildContext context,
              LandingViewModel viewModel,
              Widget? _,
            ) =>
                PageView(
              // physics: const BouncingScrollPhysics(),
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: viewModel.setTabIndex,
              children: const <Widget>[
                // TODO(Anyone): Add bottombar item
                // DashboardPage(),
                // ProfilePage(),
                // MorePage(),
                // SettingPage(),
              ],
            ),
          ),
          bottomNavigationBar: const MyBottomNavBar(),
        ),
      ),
    );
  }
}
