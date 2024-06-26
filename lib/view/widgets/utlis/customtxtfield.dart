import 'package:flutter/material.dart';
import 'package:vision1/core/theme/color.dart';

import '../../../core/theme_helper.dart';



class CustomInputText extends StatelessWidget {
  final String ?hinttext;
  final IconData ?iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;
  final TextInputType inputType;

  CustomInputText(
      {super.key,
      required this.hinttext,
      required this.inputType,
      required this.iconData,
      this.mycontroller,
      required this.valid,
      required this.isNumber,
      this.obscureText,
      this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      padding: const  EdgeInsets.all(5),
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(34)
),
      child:  TextFormField(
          keyboardType: inputType,
          textDirection: TextDirection.rtl,
          validator: valid,
          controller: mycontroller,
          obscureText: obscureText == null || obscureText == false ? false : true,
          decoration: InputDecoration(
            hintText: hinttext,
            hintTextDirection: TextDirection.rtl,
            hintStyle: const TextStyle(wordSpacing: 7, fontSize: 15,color: AppColor.gray,fontWeight: FontWeight.bold),
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.gray200,
                width: 1,
              ),
            ),
            disabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                color: appTheme.gray200,
                width: 1,
              ),
            ),

            floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              suffixIcon: InkWell(onTap: onTapIcon, child:  Icon(iconData)),
            border: OutlineInputBorder(
                borderSide:  BorderSide(
                  color: appTheme.gray200,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20)),

          ),

        ),
      );
  }
}
