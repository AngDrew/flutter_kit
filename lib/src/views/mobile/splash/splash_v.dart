import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance?.addPostFrameCallback((_) {
      // 
    });
  }

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;

    return const Scaffold(
      body: Center(
        child: Text('Do Nothing'),
        // Image.asset(
        //   'assets/images/minecraft.png',
        //   height: size.height / 2,
        //   width: size.width / 2,
        // ),
      ),
    );
  }
}
