
import 'package:e_commerce_application/core/utils/constant.dart';
import 'package:e_commerce_application/core/utils/theme_manager.dart';
import 'package:e_commerce_application/features/home/presentation/view/screens/home_screen.dart';
import 'package:e_commerce_application/features/home/presentation/view/screens/searche_page.dart';
import 'package:e_commerce_application/features/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/helper/services_helper.dart';
import 'features/home/presentation/view/screens/product_derails.dart';
import 'features/home/presentation/view/screens/search_show_page.dart';
import 'features/onboarding_and_splash/onboarding_screen.dart';
import 'features/onboarding_and_splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ServicesHelper.intiDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return _MyApp();
  }
}
/*
MultiBlocProvider(
      providers: [
        //  BlocProvider(create: (context) => AuthCubit()),
      ],
      child: const _MyApp(),
    );*/

class _MyApp extends StatefulWidget {
  const _MyApp();

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  @override
  void initState() {
    super.initState();
    //  _loadUserData();
  }

  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      UserDataConstant.token = prefs.getString('token') ?? '';
      UserDataConstant.firstName = prefs.getString('firstName') ?? 'مجهول';
      UserDataConstant.secondName = prefs.getString('secondName') ?? 'مجهول';
      UserDataConstant.phone = prefs.getString('phone') ?? '';
      UserDataConstant.id = prefs.getString('id') ?? '';
      print(' This is user data =============================================');
      print(
        '${UserDataConstant.token},,,${UserDataConstant.phone},,,${UserDataConstant.id},,,${UserDataConstant.firstName}',
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(360, 803),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: getApplicationTheme(),
            home: child,
          ),
        );
      },
      child: const ProducatDetailsScreen(),

    );
  }
}
