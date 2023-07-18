import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constant.dart';

class SubmitedButton extends StatelessWidget {
  const SubmitedButton({
    super.key,
    required this.onPressed,
    required this.child,
     this.color,
  });
  final Function() onPressed;
  final Widget child;
  final Color ?color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color??MyColors.defaultColor,
      minWidth: double.infinity,
      height: 48.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: child,
    );
  }
}
