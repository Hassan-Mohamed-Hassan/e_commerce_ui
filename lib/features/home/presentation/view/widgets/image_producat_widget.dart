import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/smooth_inducator.dart';
import '../../../../../core/widgets/text_utils.dart';

class ProducatImageAndDataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late PageController _pageController =PageController(initialPage: 0);
    return  Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 410.h,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.vertical(bottom:Radius.circular(40.sp))
          ),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 315.w),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.share,))
              ),
              Padding(
                padding:  EdgeInsets.all(20.0.sp),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 250.h,
                      child: PageView.builder(
                        itemBuilder:(context,index)=>  Image.asset(AssetsData.product,height: 200.h,),
                        itemCount: 4,
                        controller: _pageController,
                      ),
                    ),
                    Row(children: [
                      CircleAvatar(
                          backgroundColor: MyColors.whitColor,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: MyColors.titleDeepBlue,))),
                      Spacer(),
                      CircleAvatar(
                          backgroundColor: MyColors.whitColor,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded,color: MyColors.titleDeepBlue,))),
                    ],),
                  ],
                ),
              ),
              SizedBox(height: 16.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12.0.sp),
                child: Row(children: [
                  TextUtils(fontSize: 20.sp, fontWeight: FontWeight.w700, text: '200ج م',color: MyColors.titleDeepBlue),
                  SizedBox(width: 10.w,),
                  TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w400, text: '250ج م',lineThrough: TextDecoration.lineThrough,color: MyColors.subTitle2),
                  SizedBox(width: 10.w,),
                  TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w400, text: ' خصم25%',color: MyColors.defaultColor),

                  Spacer(),
                  Container(
                    width: 50.w,
                    color: MyColors.defaultColor,
                    child:Padding(
                      padding:  EdgeInsets.all(5.0.sp),
                      child: Row(children: [
                        Icon(Icons.star,color: MyColors.whitColor,size: 20.sp,),
                        Spacer(),
                        TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w400, text: '4.3',color: MyColors.whitColor),
                      ],),
                    ) ,),
                  SizedBox(width: 16.w,),
                  TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w400, text: '87 المراجعات'),
                ],),
              )
            ],
          ),

        ),
        SizedBox(height: 16.h,),
        Center(child: SmoothInducator(pageController: _pageController, count: 4)),
        SizedBox(height: 20.h,),
      ],
    );
  }
}
