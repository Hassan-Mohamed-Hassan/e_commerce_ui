import 'package:e_commerce_application/features/home/presentation/view/widgets/showall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/product_item_data_widget.dart';
import '../../../../../core/widgets/text_utils.dart';

class TopSellingAndRecommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          ShowAll(text: 'بيع الأحذية الساخنة',onperssed: (){}),
          SizedBox(height: 10,),
          SizedBox(
            height: 250.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=>ProductItemDataWidget() ,
              itemCount: 4,
              separatorBuilder: (context,index)=>SizedBox(width: 16,),
            ),
          ),
          SizedBox(height: 40.h,),
          ShowAll(text: 'موصى به لك',onperssed: (){}),
          SizedBox(height: 25.h,),
          SizedBox(
            height: 250.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=> ProductItemDataWidget(),
              itemCount: 4,
              separatorBuilder: (context,index)=>SizedBox(width: 16,),
            ),
          ),
        ],
      ),
    );
  }

}
