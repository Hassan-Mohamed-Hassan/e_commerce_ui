import 'package:e_commerce_application/core/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/constant.dart';

// ignore: must_be_immutable
class AuthTextFormFiled extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType textInputType;
  final Function validator;

  final Widget ?prefixIcon;
  final Widget ?suffixIcon; //becuse this icon will be image
  final String hintText;
  final TextStyle ?hintTextStyle;
  final String ?headerText;
  bool? readOnly = false;

  AuthTextFormFiled({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.textInputType,
    required this.validator,
     this.prefixIcon,
     this.hintTextStyle,
    required this.hintText,
     this.suffixIcon,
     this.headerText,
    this.readOnly,
  }); // Set the initial value for the text field

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextUtils(
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
              text: headerText??'',
              color: MyColors.subTitle,
            )
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        TextFormField(
          textDirection: TextDirection.rtl,
          readOnly: readOnly ?? false,
          textAlign: TextAlign.right,
          controller: controller,
          obscureText: obscureText,
          cursorColor: Colors.black,
          keyboardType: textInputType,
          validator: (value) => validator(value),
          style: GoogleFonts.almarai(color: Colors.black),
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            contentPadding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 17.h),
            filled: true,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffixIconConstraints: BoxConstraints(
                maxWidth: 36.w,
                maxHeight: 36.w,
                minHeight: 24.w,
                minWidth: 24.w),
            hintText: hintText,
            hintStyle: hintTextStyle??GoogleFonts.almarai(
              color: MyColors.descriptionText,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.sp),
              borderSide: BorderSide(color: MyColors.borders),
            ),
              enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.sp),
              borderSide: BorderSide(color: MyColors.borders),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.sp),
              borderSide: BorderSide(color: MyColors.pink),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.sp),
              borderSide: BorderSide(color: MyColors.primary),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.sp),
              borderSide: BorderSide(color: MyColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
