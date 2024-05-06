import 'package:flutter/material.dart';

import '../../../core/theme/color.dart';

buildTitleAll({required String title,required VoidCallback onTap}){
  return    Container(
    margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),
    padding: const   EdgeInsets.all(3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.topRight,

          margin: const EdgeInsets.only(top: 0,right: 30,bottom: 0),
          child: Text(title,
              style:const  TextStyle(
                  fontSize: 18,
                  color: AppColor.primary,
                  fontWeight: FontWeight.bold)),
        ),

        InkWell(
            onTap: onTap,
            child: const   Text("عرض الكل",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColor.greenButtonColor),
            )

        ),

      ],
    ),
  );
}
