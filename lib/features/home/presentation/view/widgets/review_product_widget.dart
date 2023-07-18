import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/text_utils.dart';

class ReviewProductWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 270.h,
      color: MyColors.whitColor,
      padding: EdgeInsets.all(16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RatingBar.builder(
            initialRating: 5,
            minRating: 1,
            itemSize: 25,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: MyColors.defaultColor,
            ),
            onRatingUpdate: (double value) {},

          ),
          SizedBox(height: 16.h,),
          TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w400, text: 'مدهش!'),
          TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w400,maxlines: 2,color: MyColors.subTitle2 , text: 'تناسب مذهل. أنا في مكان ما حوالي 6 أقدام وطلبت مقاس 40 ، إنه مناسب تمامًا والجودة تستحق السعر '),
          SizedBox(height: 16.h,),
          Container(
            height: 54.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        color: MyColors.borders,
                        width: 54.w,
                        height: 54.h,
                        child: Image.asset(
                          AssetsData.product,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder:(context, index) => SizedBox(width: 15.w,),
                itemCount:3),
          ),
          SizedBox(height: 16.h,),
          TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w400, text: 'ديفيد جونسون ، 1 يناير 2020'),
        ],
      ),
    );
  }
}
