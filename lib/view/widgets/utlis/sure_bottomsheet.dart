import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/theme_helper.dart';

import '../../../core/app_decoration.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/theme/color.dart';

class SureBottomsheet extends StatelessWidget {
  SureBottomsheet({required this.title,required this.msg,required this.onTap, Key? key}) : super(key: key);

  // SureController controller;
  String msg;
  String title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 428,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: AppDecoration.outline3
            .copyWith(borderRadius:const  BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
         const  SizedBox(height: 10),
          Text(title, style:const TextStyle(fontSize: 20,color: AppColor.black,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis)),
          const SizedBox(height: 0),
          Divider(color: appTheme.gray200),
          const  SizedBox(height: 15),
          Text(msg, style:const TextStyle(fontSize: 17,color: AppColor.black,fontWeight: FontWeight.normal,overflow: TextOverflow.ellipsis)),

          const   SizedBox(height: 50),

          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 15,left: 10,right: 5),
                      width:140,

                      alignment: Alignment.center,
                      decoration:BoxDecoration(
                          color: AppColor.green1,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:  const Padding(padding: EdgeInsets.all(5),
                          child:Text("تأكيد",style:  TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColor.white),)
                      )

                  ),
                )
            ) ,
            Expanded(
                child:InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child:   Container(
                      margin: const EdgeInsets.only(bottom: 15,left: 5,right: 10),
                      width:140,
                      alignment: Alignment.center,
                      decoration:BoxDecoration(
                          color: AppColor.white,
                          border: Border.all(color: AppColor.green1,width: 1),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:  const Padding(padding: EdgeInsets.all(5),
                          child:Text("الغاء",style:  TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColor.green1),)
                      )

                  ),
                )
            ) ,

          ]),
         const  SizedBox(height: 15)
        ]));
  }



}
