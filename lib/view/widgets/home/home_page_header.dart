import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';
import 'package:vision1/core/assets/assets.dart';
import 'package:vision1/core/assets/image_constant.dart';
import 'package:vision1/core/theme_helper.dart';

import '../../../core/custom_image_view.dart';
import '../../../core/functions/validinput.dart';
import '../../../core/theme/color.dart';
import '../utlis/customtxtfield.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});
  @override
  Widget build(BuildContext context) {
     double width= MediaQuery.of(context).size.width;
    
    return  Padding(padding: getPadding(all: 0),
    child: SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Stack(

        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
            decoration:const   BoxDecoration(
             color: AppColor.green50,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
              boxShadow:  [
                BoxShadow(
                  color: AppColor.shadow,
                  offset: Offset(1, 1),
                  blurStyle: BlurStyle.solid,
                  blurRadius: 5,
                  spreadRadius: -5,
                )
              ],
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.mousaAvatarBg,
                    alignment: Alignment.topCenter,
                    height: getSize(100,),
                    width: getSize(100,),
                    radius: BorderRadius.circular(50),
                    margin: getMargin(top: 20,right: 25,left: 25),),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const  Padding(
                      padding:  EdgeInsets.only(left: 10,top: 20,bottom: 0),
                      child: Text(
                        textAlign: TextAlign.right,
                        "السعودية الرياض",
                        style: TextStyle(fontSize: 11,color: AppColor.black2, fontWeight: FontWeight.bold),
                      ),
                    ),

                    _leftBtn(),
                    const  Padding(
                      padding:  EdgeInsets.only(left: 10,top: 2,bottom: 0),
                      child: Text(
                        textAlign: TextAlign.right,
                        " اختار المحطات القريبة منك ",
                        style: TextStyle(fontSize: 15,color: AppColor.black, fontWeight: FontWeight.normal),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: _searchTextFilttering(width)
          )

        ],
      ),
    ),



    );


  }

   _leftBtn(){
    return
      Padding(
          padding: const  EdgeInsets.only(left: 0,right: 10,bottom: 0),

          child: ElevatedButton.icon(

            style: const ButtonStyle(elevation: MaterialStatePropertyAll(0),
                iconSize: MaterialStatePropertyAll(20),
                alignment: Alignment.centerLeft,
                iconColor: MaterialStatePropertyAll(AppColor.gray),
                backgroundColor: MaterialStatePropertyAll(Colors.transparent)),
            label: const Text(
              textAlign: TextAlign.right,
              "تغيير موفعك",
              style: TextStyle(fontSize: 11,color: AppColor.black, fontWeight: FontWeight.normal),
            ),
            icon: const Icon(Icons.location_on_outlined,)
            ,onPressed: (){},

          )
      );
  }

  
  _searchTextFilttering( double width)
  {
    
    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSettings,
          color: AppColor.green1,

          fit: BoxFit.fill,
          width: getFontSize(35),
          height: getFontSize(35),
          margin: getMargin(right: 25,bottom: 14),
        ),

        Container(
          margin: getMargin(right: 10,left: 25,bottom: 15,),
          width:width/1.3,
          height: getFontSize(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.white,
          ),
          child: TextFormField(
            onTap: (){
              Get.toNamed(AppRoutes.searchScreen);
            },
            decoration: InputDecoration (
              hintText: "البحث عن محطة",
              hintTextDirection: TextDirection.rtl,
              hintStyle: const TextStyle(wordSpacing: 4, fontSize: 12,color: AppColor.gray,fontWeight: FontWeight.bold),
              enabledBorder: InputBorder.none,
              disabledBorder:  InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              suffixIcon: InkWell(onTap: (){
                Get.toNamed(AppRoutes.searchScreen);
              }, child: const Icon(Icons.search)),
              border: OutlineInputBorder(
                  borderSide: const  BorderSide(
                    color: AppColor.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20)),

            ),

          ),
        ),
      ],
    );
  }
}
