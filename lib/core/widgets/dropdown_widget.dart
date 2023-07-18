import 'package:e_commerce_application/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownWidget extends StatefulWidget {
  String dropdownValue;
  DropdownWidget(this.dropdownValue);

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState(dropdownValue);
}
class _DropdownWidgetState extends State<DropdownWidget> {
  String _dropdownValue;
  _DropdownWidgetState(this._dropdownValue);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        value: widget.dropdownValue,
        icon: Icon(Icons.keyboard_arrow_down),
        iconSize: 24,
        elevation: 16,
        isExpanded: true,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        style: TextStyle(color: MyColors.subTitle),
        onChanged: (newValue) {
          setState(() {
            _dropdownValue = newValue!;
          });
        },
        items: <String>['One', 'Two', 'Three', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        })
            .toList(),
      ),
    );
  }
}
