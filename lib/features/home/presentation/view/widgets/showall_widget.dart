import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/text_utils.dart';

class  ShowAll extends StatelessWidget {
   String text;
   Widget ?textbutton;
   Color? color;
   TextStyle? textStyle;
  Function() onperssed;

   ShowAll({required this.text,this.textbutton,this.textStyle,this.color,required this.onperssed});

   @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.all(14.sp),
        child: Row(
          children: [
            Text(text,style: textStyle??GoogleFonts.tajawal(fontSize: 14.sp, fontWeight: FontWeight.w700,color: color??MyColors.titleDeepBlue,),),
            Spacer(),
            TextButton(onPressed:onperssed ,
                child:textbutton?? TextUtils(fontSize: 12.sp, fontWeight: FontWeight.w400, text: 'مشاهدة الكل ->',color:color?? MyColors.subTitle,)),
           ],
        )
    );
  }
}
