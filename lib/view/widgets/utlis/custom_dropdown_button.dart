import 'package:flutter/material.dart';
import '../../../core/theme/color.dart';
import '../../../core/theme_helper.dart';

// ignore: must_be_immutable
class CustomDropDownButton extends StatelessWidget {
   CustomDropDownButton({super.key, this.items, this.onChanged});

  List<String>?items;
   String? dropdownValue;
   void Function(String?)? onChanged;
@override
  Widget build(BuildContext context) {
    return
      Container(

          margin: getMargin(top: 8,right: 14,left: 14),
          padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 1),
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(getHorizontalSize(12)),

              boxShadow:const  [
                BoxShadow(
                    color: AppColor.gray4,
                    offset: Offset(1, 1),
                    blurRadius: 4,
                    spreadRadius: 2

                )
              ]
          ),

          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration(border: InputBorder.none),
            hint: const Text('اختار نوعية الشحن'),
            value: dropdownValue,

            onChanged:(value){
              onChanged!(value!);
            },
            items: items
                !.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
      );

  }
}
