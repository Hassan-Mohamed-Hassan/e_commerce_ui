import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUtils extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final int ? maxlines;
  final double ? height;
  final TextDecoration ? lineThrough;

  const TextUtils({
    required this.fontSize,
    required this.fontWeight,
    required this.text,
     this.lineThrough,
    this.color,
    this.height,
    this.maxlines,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      style: GoogleFonts.tajawal(
        color: color ?? Colors.black,
        fontSize: fontSize,
        height: height,
        decoration: lineThrough??TextDecoration.none,
          fontWeight: fontWeight,
      ),
    );
  }
}
