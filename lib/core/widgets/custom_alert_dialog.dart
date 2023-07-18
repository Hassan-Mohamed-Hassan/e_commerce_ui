import 'package:e_commerce_application/core/widgets/submited_button.dart';
import 'package:e_commerce_application/core/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.text,
    required this.buttonText,
    required this.image,
    required this.onPressed,
  });
  final String text, buttonText, image;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.sp),
      ),
      content: Container(
        width: 327.w,
        height: 346.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.sp),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Image.asset(
              image,
              width: 105.h,
              height: 105.w,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 40.h),
            TextUtils(
              fontSize: 24.h,
              fontWeight: FontWeight.w700,
              text: text,
            ),
            SizedBox(height: 16.h),
            SubmitedButton(
              onPressed: onPressed,
              child: TextUtils(
                fontSize: 16.h,
                fontWeight: FontWeight.w500,
                text: buttonText,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
