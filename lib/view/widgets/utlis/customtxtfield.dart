import 'package:flutter/material.dart';
import 'package:vision1/core/theme/color.dart';



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
      decoration:  BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow:const   [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 7,
            spreadRadius: -2
          )
        ]
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
              disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              suffixIcon: InkWell(onTap: onTapIcon, child:  Icon(iconData)),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10)),

          ),
        ),
      );
  }
}
