import 'package:e_commerce_application/core/widgets/gridview.dart';
import 'package:e_commerce_application/core/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/product_item_data_widget.dart';
class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isError=false;
    return Scaffold(
      backgroundColor: MyColors.whitColor,
      appBar: AppBar(
        toolbarHeight:65.h,
        iconTheme: IconThemeData(
          size: 30.sp,
          color: Colors.black, // set your desired color here
        ),
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
                  child: Image.asset(
                    AssetsData.notification_icon,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                child:IconButton(icon: Icon(Icons.arrow_forward,size: 30,),onPressed: (){},)
              ),

            ]),
      ) ,
      body: isError?
      Center(child: Image.asset(AssetsData.ErrorBadRequest,fit: BoxFit.cover,),):
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Container(
                color: Color(0xFFF9FAFB),
                height: 45.h,
                alignment: Alignment.center,
              child: TextUtils(text: '14300 عنصر',fontSize: 12.sp,fontWeight:FontWeight.w400,color: MyColors.subTitle, ),
              ),
              Container(height: 100.h,
              child: Row(children: [
                Container(
                    alignment: Alignment.center,
                    width: 180,
                    child: Column(
                      children: [
                        IconButton(onPressed: (){}, icon:Image.asset(AssetsData.sort)),
                        TextUtils(fontSize: 12,fontWeight: FontWeight.w400,text: 'المرشحات')
                      ],
                    )),
                Spacer(),
                Container(
                    alignment: Alignment.center,
                    width: 180,
                    child: Column(
                      children: [
                        IconButton(onPressed: (){
                          showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(16))
                            ),
                            builder: (BuildContext context) {
                              return Container(
                                  height: 320.h,
                                  child:Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close)),
                                            Spacer(),
                                            TextUtils(fontSize: 13, fontWeight: FontWeight.w500, text: 'ترتيب حسب'),
                                          ],),
                                        SizedBox(height: 20.h,),
                                        InkWell(
                                          child: TextUtils(fontSize: 13.sp, fontWeight: FontWeight.w400, text: 'السعر الاعلى الى الادنى',
                                            color: MyColors.subTitle,),
                                          onTap: (){},
                                        ),
                                        SizedBox(height: 30.h,),
                                        InkWell(onTap: (){},child: TextUtils(fontSize: 13.sp, fontWeight: FontWeight.w400, text: 'السعر من الارخص للاعلى',color: MyColors.subTitle,)),
                                        SizedBox(height: 30.h,),
                                        InkWell(onTap: (){},child: TextUtils(fontSize: 13.sp, fontWeight: FontWeight.w400, text: 'شعبية',color: MyColors.subTitle,)),
                                        SizedBox(height: 30.h,),
                                        InkWell(onTap: (){},child: TextUtils(fontSize: 13.sp, fontWeight: FontWeight.w400, text: 'تقييم العملاء',color: MyColors.subTitle,)),
                                      ],),
                                  )
                              );
                            },
                          );}, icon:Image.asset(AssetsData.filter_order)),
                        TextUtils(fontSize: 12,fontWeight: FontWeight.w400,text: 'ترتيب حسب')
                      ],
                    )),
              ],),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: GrideView(
                    child:  ProductItemDataWidget(),
                    childAspectRatio: 1/1.8.h,
                    childcount: 6,
                    crossAxisSpacing: 10.w,
                    scrool:false ,),
              ),
            ],
          ),
        ),
      ),

    ) ;
  }
}
