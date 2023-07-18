import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/constant.dart';

// ignore: must_be_immutable
class MyAuthTextFormFiled extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType textInputType;
  final Function validator;
  final Function onChange;
  final Widget prefixIcon;
  final String suffixIcon; //becuse this icon will be image
  final String hintText;
  bool? readOnly = false;
  final int? maxLines;

  MyAuthTextFormFiled({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.textInputType,
    required this.validator,
    required this.onChange,
    required this.prefixIcon,
    required this.hintText,
    required this.suffixIcon,
    this.readOnly,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      readOnly: readOnly ?? false,
      textAlign: TextAlign.right,
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,
      keyboardType: textInputType,
      validator: (value) => validator(value),
      onChanged: (value) => onChange(value),
      style: GoogleFonts.almarai(color: Colors.black),
      decoration: InputDecoration(
        fillColor: MyColors.greeylightBorders,
        contentPadding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 17.h),
        filled: true,
        prefixIcon: prefixIcon,
        suffixIconConstraints: BoxConstraints(
            maxWidth: 36.w, maxHeight: 36.w, minHeight: 24.w, minWidth: 24.w),
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(0.w, 0, 12.w, 0),
          child: SizedBox(
            height: 24.w,
            width: 24.w,
            child: Image.asset(
              suffixIcon,
              fit: BoxFit.fill,
            ),
          ),
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.almarai(
          color: MyColors.descriptionText,
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.sp),
          borderSide: BorderSide(
            color: MyColors.pink,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.sp),
          borderSide: BorderSide(
            width: 1.5,
            color: MyColors.searchField, // Change border color here
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.sp),
          borderSide: BorderSide(color: MyColors.pink),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.sp),
          borderSide: BorderSide(color: MyColors.primary),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.sp),
          borderSide: BorderSide(color: MyColors.primary),
        ),
      ),
    );
  }
}
