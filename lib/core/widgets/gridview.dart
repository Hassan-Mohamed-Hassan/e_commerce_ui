
import 'package:flutter/cupertino.dart';

class GrideView extends StatelessWidget {
   Widget child;
       bool scrool;
       Axis ?axis;
       double childAspectRatio;
       int childcount;
       int ?crossAxisCount;
       double ?crossAxisSpacing;

   GrideView({
     required this.child,
     required this.scrool,
     this.axis,
     required this.childAspectRatio,
      required this.childcount,
     this.crossAxisCount,
     this.crossAxisSpacing,
});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount:crossAxisCount?? 2,
      scrollDirection:axis?? Axis.vertical,
      physics: scrool?ScrollPhysics():NeverScrollableScrollPhysics(),
      crossAxisSpacing: crossAxisSpacing??2,
      padding: EdgeInsets.zero,
      mainAxisSpacing: 2,
      shrinkWrap: true,
      childAspectRatio:childAspectRatio??1.0,
      children: List.generate(childcount, (index){
        return child;
      }),

    );
  }
}
