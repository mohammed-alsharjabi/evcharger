import 'package:flutter/material.dart';

import '../../../core/theme/color.dart';

buildTitleAll({required String title,required VoidCallback onTap}){
  return    Container(
    margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 0),
    color: Colors.transparent,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(

          margin: const EdgeInsets.only(top: 15,right: 11,bottom: 0),
          child: Text(title,
              style:const  TextStyle(
                  fontSize: 15,
                  color: AppColor.primary,
                  fontWeight: FontWeight.normal)),
        ),

        InkWell(
            onTap: onTap,
            child:const  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6),
              child:    Text("عرض الكل",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: AppColor.gray),
              ),
            )

        ),

      ],
    ),
  );
}
