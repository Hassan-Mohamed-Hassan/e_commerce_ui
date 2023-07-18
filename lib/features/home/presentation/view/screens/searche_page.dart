import 'package:e_commerce_application/core/utils/constant.dart';
import 'package:e_commerce_application/core/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/auth_text_form_filed.dart';

class SearcheScreen extends StatelessWidget {
  const SearcheScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(children: [
       Expanded(
           child: Padding(
             padding:  EdgeInsets.all(8.0.sp),
             child: Column(
               children: [
                 SizedBox(
                   height: 80,
                   child: AuthTextFormFiled(
                     controller: TextEditingController(),
                     obscureText: false,
                     textInputType: TextInputType.text,
                     validator: (v){},
                     hintText: '  ...البحث عن أي شي',
                   prefixIcon  : Icon(Icons.search,size: 25.w,),
               suffixIcon: Icon(Icons.cancel_outlined,size: 25.w,),
                   ),
                 ),
                 Expanded(
                   child: ListView.builder(
                       itemBuilder:(context,index)=> Container(
                           alignment: Alignment.centerRight,
                           padding:EdgeInsets.symmetric(horizontal:30.w,vertical: 10.h),
                           color: MyColors.whitColor,
                           child: TextUtils(fontSize: 13.sp,fontWeight: FontWeight.w400, text: 'أحذية رجالي')) ,
                       itemCount: 3
                   ),
                 )
               ],
             ),
           ),
       )
          ],),
        ),
      ),
    );
  }
}
