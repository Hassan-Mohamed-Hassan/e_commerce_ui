import 'package:e_commerce_application/core/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/assets_data.dart';
import '../utils/constant.dart';

class ProductItemDataWidget extends StatelessWidget {
  final double?imageWidth;
  final double?imageHeight;

  const ProductItemDataWidget({
    this.imageWidth, this.imageHeight
  });

//final List productData;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              SizedBox(width: 160.w,height: 120.h,
                child:Image.asset(AssetsData.features,fit: BoxFit.cover),
              ),
              Container(
                  alignment: Alignment.center,
                  width: 20.w,height: 20.h,
                  child:IconButton(icon: Icon(Icons.favorite,color: MyColors.defaultColor,),onPressed: (){},)),
            ],
          ),
          Container(
            width: 150.w,
            child: TextUtils(fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              maxlines: 2,
              height: 2,
              text: 'حذاء رياضي أديداس أبيض للرجال',
              color: MyColors.subTitle,),
          ),
          SizedBox(height: 10,),
          Container(
            width: 155.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextUtils(fontSize:  14.sp,
                    fontWeight:  FontWeight.w700,
                    color:  Color(0xFF1F2937), text: '250 ج م'),
                TextUtils(
                  text: "300 ج م",
                  fontSize:  12.sp,
                  fontWeight:  FontWeight.w400,
                  height:  1.5.h,
                  lineThrough: TextDecoration.lineThrough,
                  color:MyColors.subTitle2,
                ),
                SizedBox(width: 5.w,),
                TextUtils(fontSize:  13.sp, fontWeight:  FontWeight.w400, color:MyColors.defaultColor, text:  "خصم 15%"),
              ],),
          ),
          SizedBox(height: 10.h,),
          Container(
            width: 130.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextUtils(fontSize:  11.sp, fontWeight:  FontWeight.w400, color:MyColors.subTitle, text: '(345)'),
                SizedBox(width: 10.w,),
                TextUtils(fontSize:  14.sp, fontWeight:  FontWeight.w700,color:MyColors.defaultColor, text: '4.8'),
                SizedBox(width: 10.w,),
                Icon(Icons.star,color:Colors.orange,size: 15.sp,),

              ],),
          ),
        ]);
  }
}
