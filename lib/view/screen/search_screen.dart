import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';
import 'package:vision1/core/assets/image_constant.dart';
import 'package:vision1/core/custom_image_view.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/view/widgets/home/home_page_header.dart';
import 'package:vision1/view/widgets/home/station.dart';


import '../../core/theme_helper.dart';
import '../widgets/home/h_station.dart';
import '../widgets/station/stataion_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(title: _searchTextFilttering(339),
        toolbarHeight: 120,
        backgroundColor: AppColor.green50,


      ) ,
      backgroundColor: AppColor.backGroundColor,
      body: ListView(
        physics:const  BouncingScrollPhysics(),
        children: [

          CustomImageView(
            width: MediaQuery.of(context).size.width,
            imagePath: ImageConstant.imgDirectiomScreen,
            fit: BoxFit.fill,
          ),


        ],
      ),
      bottomNavigationBar:  Container(
        width: 250,
        height: 150,
        color: Colors.transparent,
        // margin: getMargin(bottom: 40),
        child: ListView.builder(
          itemCount: 4,
physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Expanded(child: const   StationCardWidget()),),
      ),
    );
  }


  _searchTextFilttering( double width)
  {

    return     Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Container(
          margin: getMargin(right: 0,left: 3,bottom: 15,),
          width:width/1.2,
          height: getFontSize(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.white,
          ),
          child: Expanded(
            child: TextFormField(
              onTap: (){
            
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
            
                }, child: const Icon(Icons.search)),
                border: OutlineInputBorder(
                    borderSide: const  BorderSide(
                      color: AppColor.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20)),
            
              ),
            
            ),
          ),
        ),

        Expanded(child: CustomImageView(
          imagePath: ImageConstant.imgIcevpointGreen600,
          fit: BoxFit.fill,
          onTap: (){
            Get.toNamed(AppRoutes.filterScreen);
          },
          width: getFontSize(30),
          height: getFontSize(30),
          margin: getMargin(left: 8,bottom: 14),
        ),)

      ],
    );
  }
}
