import 'package:e_commerce_application/core/widgets/submited_button.dart';
import 'package:e_commerce_application/features/drawer_screens/presentation/view/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/auth_text_form_filed.dart';
import '../../../../../core/widgets/text_utils.dart';

class WriteReview extends StatelessWidget {
  late PageController _pageController =PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        toolbarHeight:70.h,
        shadowColor: Color(0x0F4B5563),
        elevation: 0,
        titleSpacing: 0,
        title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              Spacer(),
             SizedBox(
            width: 70.w,
            child:  TextUtils(fontSize:  13.sp, fontWeight:  FontWeight.w400, text: 'كتابة مراجعة'),
          ),
             SizedBox(
              child:IconButton(icon: Icon(Icons.arrow_forward,size: 25.sp,color: MyColors.titleDeepBlue,),onPressed: (){},)
          ),

            ]),
      ) ,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding:  EdgeInsets.all(16.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 140.h,
              color: MyColors.whitColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(8.sp))
                    ),
                    child:Image.asset(AssetsData.product,height: 80.h,width: 80.w,),
                  ),
                 SizedBox(width: 16.w,),
                 Container(
                   width: 210.w,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       TextUtils(maxlines: 3,fontSize:  16.sp, fontWeight:  FontWeight.w400, text: 'قميص من كالفن كلاين بقصة عادية'),
                       SizedBox(height: 16.h,),
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
                     ],
                   ),
                 ),
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            TextUtils(fontSize:  14.sp, fontWeight:  FontWeight.w400, text: 'عنوان المراجعة'),
            AuthTextFormFiled(
              controller: TextEditingController(),
              obscureText: false,
              textInputType: TextInputType.text,
              validator: (v){},
              hintTextStyle: GoogleFonts.tajawal(fontSize: 12.sp,fontWeight: FontWeight.w400),
              hintText: 'منتج جميل',
              ),
            SizedBox(height: 16.h,),
            TextUtils(fontSize:  14.sp, fontWeight:  FontWeight.w400, text: 'تفاصيل المراجعة:'),
            SizedBox(height: 16.h,),
            Container(
                height: 114.h,
                padding: EdgeInsets.all(10.sp),
                color: Colors.grey.shade200,
                child: TextUtils(maxlines: 5,fontSize:  14.sp, color: MyColors.subTitle2,fontWeight:  FontWeight.w400, text: 'تناسب مذهل. أنا في مكان ما حوالي 6 أقدام وطلبت مقاس 40 ، إنه مناسب تمامًا والجودة تستحق السعر ...')),
            SizedBox(height: 60.h,),
            SubmitedButton(onPressed: (){

            }, child:  TextUtils(fontSize:  15.sp, color: MyColors.whitColor,fontWeight:  FontWeight.w400, text: 'اضافة المراجعة'),)




          ],),
        ),
      ),
    );
  }
}
