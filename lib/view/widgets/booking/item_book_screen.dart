import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/theme/color.dart';

import '../../../controller/station/station_booked_controller.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme_helper.dart';
import '../utlis/custom_elevated_button.dart';
import '../utlis/sure_bottomsheet.dart';


class ItemInputSelect extends GetView<StationBookedController> {
   ItemInputSelect({super.key,required this.onTap,this.title,this.item});
   Function()?  onTap;
   String ?title;
   String ?item;

  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap:(){
        onTap!.call();
      },
      child:

      Container(
        margin: getMargin(top: 25,right: 15,left: 15),

        child: Padding(
          padding: getPadding(left: 5,right: 5,top: 0,bottom: 0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
                child:   Text(title!,style:const TextStyle(color: AppColor.black,fontSize: 14,fontWeight: FontWeight.bold)),
              ),
             const  SizedBox(height: 3,),

              Container(
                padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 9),

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
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item==null? "   اختار ${title!} الخاصة بك":item!,
                        style:const TextStyle(color: AppColor.gray3,fontSize: 16,)),

                    CustomImageView(
                        imagePath: ImageConstant.imgArrowleft)
                  ],
                ),
              )
            ],
          )
        ),
      ),





    );

  }
}




