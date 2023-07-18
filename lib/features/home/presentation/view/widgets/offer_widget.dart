import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/text_utils.dart';


class OferWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.all(14.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 60.w,height: 35.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(AssetsData.part2,fit: BoxFit.fill,),
                  TextUtils(fontSize: 8.sp, fontWeight: FontWeight.w400, text: 'عروضنا',color: MyColors.whitColor),

                ],
              ),
            ),
            SizedBox(width: 180.w,height: 35.h,
              child: Stack(
                children: [
                  Image.asset(AssetsData.part1,fit: BoxFit.fill),
                  Positioned(
                    child: TextUtils(fontSize: 8.sp, fontWeight: FontWeight.w400, text: 'ثانية',color: MyColors.whitColor),
                    top:12.h ,
                    left: 15.w,
                    bottom: 8.h,
                  ),
                  Positioned(
                    child: TextUtils(fontSize: 13.sp, fontWeight: FontWeight.w700, text: '06',color: MyColors.whitColor),
                    top:8.h ,
                    left: 35.w,
                    bottom: 8.h,
                  ),
                  Positioned(
                    child: TextUtils(fontSize: 8.sp, fontWeight: FontWeight.w400, text: 'دقيقة',color: MyColors.whitColor),
                    top:12.h ,
                    left: 65.w,
                    bottom: 8.h,
                  ),
                  Positioned(
                    child: TextUtils(fontSize: 13.sp, fontWeight: FontWeight.w700, text: '20',color: MyColors.whitColor),
                    top:8.h ,
                    left: 95.w,
                    bottom: 8.h,
                  ),
                  Positioned(
                    child: TextUtils(fontSize: 8.sp, fontWeight: FontWeight.w400, text: 'ساعة',color: MyColors.whitColor),
                    top:12.h ,
                    left: 125.w,
                    bottom: 8.h,
                  ),
                  Positioned(
                    child: TextUtils(fontSize: 13.sp, fontWeight: FontWeight.w700, text: '14',color: MyColors.whitColor),
                    top:8.h ,
                    left: 150.w,
                    bottom: 8.h,
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
