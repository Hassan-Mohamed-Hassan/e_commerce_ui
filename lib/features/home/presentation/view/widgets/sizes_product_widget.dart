import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/text_utils.dart';
class SizesProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 240.w,
      child: Row(
        children: [
          Expanded(
            child: Container(
                height: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: MyColors.borders),
                    borderRadius: BorderRadius.all(Radius.circular(6.sp))
                ),
                child: TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w500, text: 'XXL')),
          ),
          SizedBox(width: 8.w,),
          Expanded(
            child: Container(
                height: 32.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: MyColors.borders),
                    borderRadius: BorderRadius.all(Radius.circular(6.sp))
                ),
                child: TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w500, text: 'XL')),
          ),
          Expanded(
            child: Container(
                height: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: MyColors.borders),
                    borderRadius: BorderRadius.all(Radius.circular(6.sp))
                ),
                child: TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w500, text: 'L')),
          ),
          SizedBox(width: 8.w,),
          SizedBox(width: 8.w,),
          Expanded(
            child: Container(
                height: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: MyColors.borders),
                    borderRadius: BorderRadius.all(Radius.circular(6.sp))
                ),
                child: TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w500, text: 'M')),
          ),
          SizedBox(width: 8.w,),
          Expanded(
            child: Container(
                height: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: MyColors.borders),
                    borderRadius: BorderRadius.all(Radius.circular(6.sp))
                ),
                child: TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w500, text: 'S')),
          ),

        ],
      ),
    );
  }
}
