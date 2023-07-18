import 'package:e_commerce_application/core/widgets/smooth_inducator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../../core/utils/assets_data.dart';
import '../../../../../../core/utils/constant.dart';
import '../../../../../../core/widgets/submited_button.dart';
import '../../../../../../core/widgets/text_utils.dart';
import 'onboardingModel.dart';

List<OnboardingModel> onboardingData=[
  OnboardingModel(AssetsData.onboarding1, 'اضافة الي المفضلة','انة من السهل اضافة العناصر التي تعجلك الي قسم اعجبني', 'التالي'),
  OnboardingModel(AssetsData.onboarding2, 'الحصول على إشعار','ابق على اطلاع على حالة الطرود الخاصة بك مع إخطارات مفصلة', 'التالي'),
  OnboardingModel(AssetsData.onboarding3, 'تتبع طلباتي','لا يوجد شيء أسهل من التحقق من حالة من طلباتك مع متجرنا.', 'ابدأ الان'),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 23.0.w),
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
                controller: _pageController,
               // physics: NeverScrollableScrollPhysics(),
                itemCount: onboardingData.length,
                itemBuilder: (context,index){
              return   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h,),
                  TextUtils(
                      fontSize:14.sp ,
                      fontWeight: FontWeight.w700,
                      text: 'تخطي',
                      color:MyColors.defaultColor
                  ),
                  SizedBox(
                    height: 49.h,
                  ),
                  Center(
                    child: SizedBox(
                      height: 425.h,
                      width: 314.w,
                      child: Image.asset(
                      onboardingData[index].image,
                      fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 360.w,
                    height: 240.h,
                    decoration:  BoxDecoration (
                      color:  Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0.sp),
                        topRight: Radius.circular(20.0.sp),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0F4B5563),
                          blurRadius: 12.0.sp,
                        ),
                      ],
                    ),
                    child: Column(children: [
                      SizedBox(height: 30.h,),
                      TextUtils(
                          fontSize:16.sp ,
                          fontWeight: FontWeight.w700,
                          text:onboardingData[index].title ,
                          color:MyColors.subTitle
                      ),
                      SizedBox(height: 14.h,),
                      Container(
                        width: 288.w,
                        child: TextUtils(
                            maxlines: 2,
                            fontSize:11.sp ,
                            fontWeight: FontWeight.w700,
                            text: onboardingData[index].subTitle,
                            color:MyColors.subTitle
                        ),
                      ),
                      SizedBox(height: 24.h,),
                      SmoothInducator(pageController: _pageController, count: 3),
                      SizedBox(height: 40.h,),//Not responsiv
                      SizedBox(
                        width: 156.w,
                        child: SubmitedButton(
                          onPressed: (){
                            setState(() {
                              _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.fastEaseInToSlowEaseOut);
                            });
                          },
                          child:  TextUtils(
                              fontSize:14.sp ,
                              fontWeight: FontWeight.w700,
                              text:onboardingData[index].textButton ,
                              color:MyColors.searchField
                          ),),
                      )
                    ],),
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}