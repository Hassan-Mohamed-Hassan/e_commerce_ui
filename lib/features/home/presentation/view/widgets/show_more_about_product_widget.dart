import 'package:e_commerce_application/features/home/presentation/view/widgets/showall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/text_utils.dart';
class ShowMoreAboutProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 60.h,
        color: MyColors.whitColor,
        alignment: Alignment.center,
        child: ShowAll(text: 'عرض المزيد',
            textbutton:Icon(Icons.arrow_forward_ios_rounded,color: MyColors.defaultColor,),textStyle: GoogleFonts.tajawal(fontSize: 12,fontWeight: FontWeight.w500,color: MyColors.defaultColor),
            onperssed: (){
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(16))
                ),
                builder: (BuildContext context) {
                  return Container(
                      height: 400.h,
                      child:SingleChildScrollView(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close)),
                                  Spacer(),
                                  TextUtils(fontSize: 13.sp, fontWeight: FontWeight.w500, text: 'تفاصيل المنتج'),
                                ],),
                              SizedBox(height: 20.h,),
                              TextUtils(fontSize: 13.sp, maxlines: 3,fontWeight: FontWeight.w400, text: 'تيشرت قطن رجالى رقبة دائرية مريح جدا مصنوع من القطن الصافي وغير المخلوط ، مع طباعة حرارية تتحمل أقصى ظروف الغسيل والإستهلاك',
                                color: MyColors.subTitle,),
                              SizedBox(height: 20.h,),
                              TextUtils(fontSize: 13.sp, maxlines: 3,fontWeight: FontWeight.w400,
                                text: ': تفاصيل اكتر',),
                              SizedBox(height: 20.h,),
                              TextUtils(fontSize: 13.sp, maxlines: 3,fontWeight: FontWeight.w400, text: 'تيشرت قطن رجالى رقبة دائرية مريح جدا مصنوع من القطن الصافي وغير المخلوط ، مع طباعة حرارية تتحمل أقصى ظروف الغسيل والإستهلاك',
                                color: MyColors.subTitle,),
                            ],),
                        ),
                      )
                  );
                },
              );
            }));
  }
}
