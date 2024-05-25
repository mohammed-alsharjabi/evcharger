import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/app_decoration.dart';
import 'package:vision1/core/custom_image_view.dart';

import '../../core/theme/color.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "تنبيه",
      backgroundColor: AppColor.backGroundColor,
      radius: 20,
      titlePadding: const EdgeInsets.all(15),
      titleStyle:const  TextStyle(color: AppColor.green2 , fontWeight: FontWeight.bold),
      middleText: "هل تريد الخروج من التطبيق",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.green2)),
            onPressed: () {
              exit(0);
            },
            child:const Text("تاكيد")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.white),
            ),
            onPressed: () {
              Get.back();
            },
            child:const Text("الغاء"))
      ]);
  return Future.value(true);
}


Future<bool>alertMessageApp({ required  title, required  subtitle,required icon,Function()? onConfirm  }){

Get.defaultDialog(

  backgroundColor: AppColor.white,

  radius:25,
  contentPadding:const EdgeInsets.symmetric(horizontal: 0) ,
  confirm:Expanded(
    child: Container(
      margin: const EdgeInsets.only(bottom: 30,left: 10,right: 5),
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
  ) ,
  cancel:Expanded(
    child: Container(
        margin: const EdgeInsets.only(bottom: 30,left: 5,right: 10),
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
  ) ,

  actions: [
    Container(
      width: double.infinity,
      height: 200,
      color: AppColor.white,
      child: Column(
        children: [

          Container(
            width: 90,
            height: 90,
            padding: const EdgeInsets.all(15),
            decoration:const  BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.green1
            ),
            child:  CustomImageView(
              imagePath: icon,
              alignment: Alignment.center,
               width: 70,
              height: 70,
            ),
          ),

          Padding(padding:const EdgeInsets.all(5),
              child:Text(title,style:const  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColor.black),)
          ),

          Padding(padding:const EdgeInsets.only(bottom: 7),
              child:Text(subtitle,style:const  TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: AppColor.black),)
          )

        ],
      ),
    ),

  ],


  onCancel: (){
  Get.back();
  },
  onConfirm:onConfirm,





);

  return Future.value(true);
}

void showMyDialog({required BuildContext  context, required  title, required  subtitle,required icon,Function()? onConfirm  }) {
  showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: AlertDialog(
          backgroundColor: AppColor.white,
          content: Container(
            width: double.infinity,
            height: 200,
            color: AppColor.white,
            child: Column(
              children: [

                Container(
                  width: 90,
                  height: 90,
                  padding: const EdgeInsets.all(15),
                  margin:const EdgeInsets.only(top: 15),
                  decoration:const  BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.green1
                  ),
                  child:  CustomImageView(
                    imagePath: icon,
                    alignment: Alignment.center,
                    width: 60,
                    height: 60,
                    color: AppColor.white,
                  ),
                ),

                Padding(padding:const EdgeInsets.all(5),
                    child:Text(title,style:const  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColor.black),)
                ),

                Padding(padding:const EdgeInsets.only(bottom: 7),
                    child:Text(subtitle,style:const  TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: AppColor.black),)
                )

              ],
            ),
          )
            ,
          surfaceTintColor: AppColor.white,

          actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: onConfirm,
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
            ],
          )
          ],
        ),
      );
    },
  );
}
