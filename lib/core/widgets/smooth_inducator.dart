import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../utils/constant.dart';

class SmoothInducator extends StatelessWidget {
     final  PageController pageController;
      final int count;
     SmoothInducator({ required this.pageController,required this.count});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count:  count,
      axisDirection: Axis.horizontal,
      effect:  SlideEffect(
          spacing:  8.0.w,
          dotWidth:  12.0.w,
          dotHeight:  12.0.h,
          dotColor:  Color(0xFFE5E7EB),
          activeDotColor:MyColors.defaultColor
      ),
    );
  }
}
