import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets_data.dart';
import '../../../../../../core/utils/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SplashScreenBody(),
      ),
    );
  }
}

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingTextAnimation;

  @override
  void initState() {
    initSlidingTextAnimation();
    navToHomeScreen();
    super.initState();
  }

  void navToHomeScreen() {
    /*   Future.delayed(
      const Duration(seconds: 2),
      (() {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (cntext) => UserDataConstant.token.isEmpty
                ? const LogInScreen()
                : const MainScreen()));
      }),
    );*/
  }

  void initSlidingTextAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingTextAnimation =
        Tween<Offset>(begin: Offset(0, 4.h), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200.h,
            width: 300.w,
            child: Image.asset(
              AssetsData.logoSplash,
            ),
          ),
        ],
      ),
    );
  }
}
