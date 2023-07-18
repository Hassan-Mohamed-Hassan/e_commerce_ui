import 'package:e_commerce_application/core/utils/assets_data.dart';
import 'package:e_commerce_application/core/utils/constant.dart';
import 'package:e_commerce_application/core/widgets/auth_text_form_filed.dart';
import 'package:e_commerce_application/core/widgets/gridview.dart';
import 'package:e_commerce_application/core/widgets/smooth_inducator.dart';
import 'package:e_commerce_application/core/widgets/text_utils.dart';
import 'package:e_commerce_application/features/home/presentation/view/widgets/showall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../homeModel.dart';
import '../widgets/offer_widget.dart';
import '../widgets/top_selling_recommended_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     late PageController _pageController =PageController(initialPage: 0);;
    List<HorizontalHomeModel>horizontal_home=[
      HorizontalHomeModel(image:AssetsData.devices , title: 'الأجهزة'),
      HorizontalHomeModel(image: AssetsData.electronics, title: 'إلكترونيات'),
      HorizontalHomeModel(image: AssetsData.features, title: 'أثاث'),
      HorizontalHomeModel(image:AssetsData.modh , title: 'موضة'),
      HorizontalHomeModel(image:AssetsData.modh , title: 'موضة'),
    ];
    return  SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Padding(padding:EdgeInsets.all(16.sp),
                      child: AuthTextFormFiled(
                          controller: TextEditingController(),
                          obscureText: false,
                          textInputType: TextInputType.text,
                          validator: (v){},
                          hintText: '  ...البحث عن أي شي',
                          suffixIcon: Icon(Icons.search,size: 30.w,),
                          ),
                      ),
                       ShowAll(text: 'فئات',onperssed: (){}),
                      Padding(padding: EdgeInsets.only(top: 14.h,bottom: 30.h),
                      child: Container(
                        height: 80.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  SizedBox(
                                    width: 48.w,
                                    height: 48.h,
                                    child: Image.asset(
                                      horizontal_home[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 8.h,),
                                  TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w400, text: horizontal_home[index].title),
                                ],
                              );
                            },
                            separatorBuilder:(context, index) => SizedBox(width: 35.w,),
                            itemCount: horizontal_home.length),
                      ),
                      ),
                      SizedBox(
                        height: 210.h,
                        child: PageView.builder(
                            itemBuilder: (context,index) {
                          return   SizedBox(
                            height: 210.h,
                            child: Image.asset(
                              AssetsData.offer,
                              fit: BoxFit.fill,
                            ),
                          );
                             },
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          controller: _pageController,
                        ),
                      ),
                      SmoothInducator(pageController: _pageController, count: 4),
                      SizedBox(height: 10.h,)
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                ShowAll(text: 'صفقة اليوم',onperssed: (){}),
                OferWidget(),
                SizedBox(height: 30.h,),
                Card(
                  child: GrideView(
                    scrool: false,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          SizedBox(width: 145.w,height: 155.h,
                            child:Image.asset(AssetsData.im,fit: BoxFit.fill),
                          ),
                          Container(
                            color: MyColors.defaultColor,
                            alignment: Alignment.center,
                            width: 51.w,height: 18.h,
                            child:TextUtils(fontSize: 10.sp, fontWeight: FontWeight.w500, color: MyColors.whitColor,text: 'خصم %40'),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h,),
                      TextUtils(fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        text: 'عطر شاليمار',
                        color: MyColors.subTitle,),
                  ]),
                    ),
                    childAspectRatio: 1/1.1,
                    childcount: 4
                  ),
                ),
                SizedBox(height: 20.h,),
                TopSellingAndRecommended()

              ],
            ),
          ),
        ),
      ),
    );
  }
}
