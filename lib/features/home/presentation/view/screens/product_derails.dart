import 'package:e_commerce_application/core/utils/assets_data.dart';
import 'package:e_commerce_application/core/utils/constant.dart';
import 'package:e_commerce_application/core/widgets/text_utils.dart';
import 'package:e_commerce_application/features/home/presentation/view/widgets/image_producat_widget.dart';
import 'package:e_commerce_application/features/home/presentation/view/widgets/showall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/widgets/auth_text_form_filed.dart';
import '../../../../../core/widgets/product_item_data_widget.dart';
import '../../../../../core/widgets/smooth_inducator.dart';
import '../../../../../core/widgets/submited_button.dart';
import '../widgets/review_product_widget.dart';
import '../widgets/show_all_comments_widget.dart';
import '../widgets/show_more_about_product_widget.dart';
import '../widgets/sizes_product_widget.dart';

class ProducatDetailsScreen extends StatelessWidget {
  const ProducatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight:90.h,
          iconTheme: IconThemeData(
            size: 30.sp,
            color: Colors.black, // set your desired color here
          ),
          backgroundColor: MyColors.whitColor,
          shadowColor: Color(0x0F4B5563),
          elevation: 0,
          title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                InkWell(
                  child: SizedBox(
                    width: 25.w,
                    child: Image.asset(
                      AssetsData.bag_icon,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(width: 16.w,),
                InkWell(
                  child: SizedBox(
                    width: 25.w,
                    child: Icon(Icons.favorite_border)
                  ),
                ),
                SizedBox(width: 10.w,),
                IconButton(icon: Icon(Icons.search,size: 30.sp),onPressed: (){},),
                Spacer(),
                SizedBox(
                  width: 90.w,
                  child:  TextUtils(fontSize:  13.sp, fontWeight:  FontWeight.w400, text: 'قمصان رجالي'),
                ),
                SizedBox(
                    child:IconButton(icon: Icon(Icons.arrow_forward,size: 25.sp,),onPressed: (){},)
                ),
                //#FFFFFF7A, #D2D5DD85

              ]),
        ) ,
        body:Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProducatImageAndDataWidget(),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.0.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w400, text: 'كالفن كلاين'),
                    SizedBox(height: 16.h,),
                    TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w700, text: 'قميص من كالفن كلاين بقصة عادية'),
                    SizedBox(height: 16.h,),
                    Row(
                        children: [
                          TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w400, text: ' اللون : ',color: MyColors.subTitle,),
                          TextUtils(fontSize: 13.sp, fontWeight: FontWeight.w700, text: 'أبيض',),
                          Spacer(),
                          TextUtils(fontSize: 13.sp, fontWeight: FontWeight.w400, text: 'باقي 5 قطع فقط',color: MyColors.subTitle,),
                      ],),
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
                            itemCount:5),
                      ),
                    SizedBox(height: 16.h,),
                    TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w700, text: 'مقاس'),
                    SizedBox(height: 16.h,),
                    SizesProductWidget(),
                    SizedBox(height: 35.h,),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 16.sp),
                      height: 100.h,
                      color: MyColors.whitColor,
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w400, text: 'خيارات التسليم'),
                          AuthTextFormFiled(
                            controller: TextEditingController(),
                            obscureText: false,
                            textInputType: TextInputType.text,
                            validator: (v){},
                            hintTextStyle: GoogleFonts.tajawal(fontSize: 12.sp,fontWeight: FontWeight.w400),
                            hintText: 'أدخل رمز PIN Code',
                            suffixIcon:InkWell(child: TextUtils(height: 3.h,fontSize: 12.sp, fontWeight: FontWeight.w500, text: 'فحص',color: MyColors.defaultColor,)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    Container(
                      width: double.infinity,
                      height: 190.h,
                      padding: EdgeInsets.all(16.sp),
                      color: MyColors.whitColor,
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w400, text: 'تفاصيل المنتج'),
                          SizedBox(height: 16.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w400, height: 2.5.h,text: "قماش\n طول\n رقبة\n نمط",color: MyColors.subTitle2,),
                              SizedBox(width: 10.w,),
                              TextUtils(fontSize: 12.sp, height: 2.5.h,fontWeight: FontWeight.w400, text: "- قطن\n - عادي \n- رقبة مستديرة\n - طباعة جرافيك"),
                          ],),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h,),
                    ShowMoreAboutProductWidget(),
                    SizedBox(height: 16.h,),
                    Container(
                        width: double.infinity,
                        height: 60.h,
                        color: MyColors.whitColor,
                        child: TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w400, text: 'التقييمات والمراجعات')),
                    SizedBox(height: 16.h,),
                    Container(
                        width: double.infinity,
                        height: 85.h,
                        padding: EdgeInsets.all(16.sp),
                        color: MyColors.whitColor,
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w500, text: 'تقييم عام',),
                                TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w500, text: '574 تصنيفات',color: MyColors.subTitle2,height: 1.5),
                              ],
                            ),
                            SizedBox(width: 8.w,),
                            TextUtils(fontSize: 24.sp, fontWeight: FontWeight.w500, text: '4.8/5'),
                            Spacer(),
                            Container(
                                width:60.w ,
                                height: 40.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: MyColors.whitColor,
                                    border: Border.all(color: MyColors.defaultColor),
                                    borderRadius: BorderRadius.all(Radius.circular(8),
                                    )
                                ),
                                child: TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w400, color: MyColors.defaultColor,text: 'معدل')),
                          ],
                        ),
                      ),
                    SizedBox(height: 16.h,),
                    ReviewProductWidget(),
                     SizedBox(height:8.h,),
                    ShowAllCommentsWidget(),
                    SizedBox(height:24.h,),
                    ShowAll(text: 'عقد يعجبك هذا ',onperssed: (){

                    }),
                    SizedBox(
                      height: 250.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context,index)=> ProductItemDataWidget(),
                        itemCount: 4,
                        separatorBuilder: (context,index)=>SizedBox(width: 16.w,),
                      ),
                    ),
                    SizedBox(height:24.h,),
                    Container(
                        height: 70.h,
                        color: MyColors.whitColor,
                        child: Row(children: [
                          Expanded(child: SubmitedButton(child:TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w400, text: 'شراء الأن '),onPressed: (){},)),
                          SizedBox(width: 16.w,),
                          Expanded(child: SubmitedButton(child:TextUtils(fontSize: 14.sp, fontWeight: FontWeight.w400, text: 'إضافة الي الشنطة ',),color: MyColors.whitColor,onPressed: (){},)),
                           ],)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}