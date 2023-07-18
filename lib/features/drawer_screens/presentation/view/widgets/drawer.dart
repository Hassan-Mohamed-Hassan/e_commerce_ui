import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/submited_button.dart';
import '../../../../../core/widgets/text_utils.dart';

import '../../../../onboarding_and_splash/onboarding_screen.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({super.key});

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 15.w);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.white,
      elevation: 0,
      surfaceTintColor: Colors.white,
      width: 217.w,
      child: Material(
        color: MyColors.primary,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100.h,
              width: 85.w,
              child: Image.asset(
                AssetsData.logoSplash,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  InkWell(
                    onTap: () {
                      /*  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChangePasswordScreen(),
                        ),
                      );*/
                    },
                    child: TextUtils(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      text: 'تغيير كلمة المرور',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  InkWell(
                    onTap: () {
                      //   showCupertinoAlertDialog(context);
                    },
                    child: TextUtils(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      text: 'تسجيل الخروج',
                      color: MyColors.pink,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showCupertinoAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          content: TextUtils(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            text: 'هل أنت متأكد أنك تريد تسجيل الخروج؟',
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: TextUtils(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                text: 'نعم الخروج',
                color: MyColors.pink,
              ),
              onPressed: () async {
                /*  final prefs = await SharedPreferences.getInstance();
                await prefs.setString('token', '');
                await prefs.setString('firstName', '');
                await prefs.setString('secondName', '');
                await prefs.setString('phone', '');
                await prefs.setString('id', '');
                setState(() {
                  UserDataConstant.token = '';
                  UserDataConstant.firstName = '';
                  UserDataConstant.secondName = '';
                  UserDataConstant.phone = '';
                  UserDataConstant.id = '';
                  print(
                      ' This is user data =============================================');
                  print(
                    '${UserDataConstant.token},,,${UserDataConstant.phone},,,${UserDataConstant.id},,,${UserDataConstant.firstName}',
                  );
                });
                print('log out ----------------------------------------');
                // ignore: use_build_context_synchronously
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const OnboardingScreen(),
                  ),
                );*/
              },
            ),
            CupertinoDialogAction(
              child: TextUtils(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                text: 'لا',
                color: MyColors.primary,
              ),
              onPressed: () {
                // Perform the desired action here
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.sp),
      ),
      content: Container(
        width: 295.w,
        height: 100.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.sp),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextUtils(
              fontSize: 12.h,
              fontWeight: FontWeight.w500,
              text: 'هل أنت متأكد أنك تريد تسجيل الخروج؟',
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                SubmitedButton(
                  onPressed: () {},
                  child: TextUtils(
                    fontSize: 16.h,
                    fontWeight: FontWeight.w500,
                    text: '',
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
