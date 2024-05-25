
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';
import 'package:vision1/controller/station/station_controller.dart';
import 'package:vision1/core/class/handlingdataview.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/data/datasource/statics/test_data.dart';
import 'package:vision1/data/model/stationmodel/station_info_model.dart';

import '../../core/assets/image_constant.dart';
import '../../core/button_theme_helper.dart';
import '../../core/custom_image_view.dart';
import '../../core/text_theme_helper.dart';
import '../../core/theme_helper.dart';
import '../widgets/station/conctore_item.dart';
import '../widgets/station/stataion_images.dart';
import '../widgets/station/station_info_widget.dart';
import '../widgets/utlis/custom_elevated_button.dart';
import 'review_booking_screen.dart';


// ignore: must_be_immutable
class StationScreen extends GetView<StationControllerImp> {

    StationScreen({super.key,this.stationInfoModel});
 StationInfoModel? stationInfoModel;
StationControllerImp c=Get.put(StationControllerImp());
  @override
  Widget build(BuildContext context) {

    Get.put(StationControllerImp());
    // ignore: deprecated_member_use
    return GetBuilder<StationControllerImp>(builder:
    (controller) => HandlingDataView(
      statusRequest: controller.statusRequest,
        widget:
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColor.backGroundColor,
          body:  Container(
              child:
              Stack(
                children: [
                  Padding(
                    padding: getPadding(bottom: 0),
                    child: Column(
                      children: [

                        //station image

                          StationImages(img:stationInfoModel!.icon!),



                        //station information
                        Expanded(child:
                        ListView(
                          physics:const  BouncingScrollPhysics(),
                          children: [
                            SizedBox(height: getVerticalSize(24),),
                            StationInfoWidget(stationInfo: stationInfoModel!),



                            Padding(
                              padding: getPadding(right: 16,left: 16,top: 10,bottom: 10),
                              child: Text("الشحن : ",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextThemeHelper.bodymedium16black
                              ),
                            ),

                            Padding(
                              padding: getPadding(left: 16,right: 16),
                              child: Row(
                                children: [

                                  amenities_data_formate("Wifi", ImageConstant.imgWifiIcon),
                                  SizedBox(width: getHorizontalSize(21),),
                                  amenities_data_formate("Gym", ImageConstant.imggymIcon),
                                  SizedBox(width: getHorizontalSize(21),),
                                  amenities_data_formate("Park", ImageConstant.imgParkIcon),
                                  SizedBox(width: getHorizontalSize(21),),
                                  amenities_data_formate("Parking", ImageConstant.imgParkingIcon),
                                ],
                              ),
                            ),


                            Padding(
                              padding: getPadding(right: 16,left: 16,top: 10,bottom: 10),
                              child: Text("الموصلات التوفرة : ",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextThemeHelper.bodymedium16black
                              ),
                            ),

                            // connector Item
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics:const  BouncingScrollPhysics(),
                              child: Row(
                                  children: ConnctorItem.conctoreItemList
                              ),
                            )

                          ],
                        ))





                      ],
                    ),
                  ),

                ],
              ),

          ),

          bottomNavigationBar: Container(

            color: appTheme.white,
            child: Padding(
                padding: getPadding(top: 32, left: 16, right: 16, bottom: 40),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                            text: "الموقع",
                            buttonStyle: ButtonThemeHelper.fillwhiteborder12
                                .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(Size(
                                    double.infinity,
                                    getVerticalSize(54)))),
                            buttonTextStyle: TextThemeHelper.titleMediumGreen600,
                            onTap: () {

                            }),
                      ),
                      SizedBox(width: getHorizontalSize(16),),
                      Expanded(
                        child:
                        CustomElevatedButton(
                            text:
                            "حجز مقبض",
                            buttonStyle: ButtonThemeHelper
                                .fillGreen600TL12
                                .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(Size(
                                    double.infinity,
                                    getVerticalSize(54)))),
                            buttonTextStyle: TextThemeHelper.titleMediumPrimary,
                            onTap: () {

                              Get.toNamed(AppRoutes.addBooking);
                              // onTapLogout();
                            }),
                      )
                    ])),
          ),
        ),
    )
    ) ;



  }


  // ignore: non_constant_identifier_names
  Widget amenities_data_formate(title,icon){
    return   Expanded(
      child: Container(
        decoration:const  BoxDecoration(
           shape: BoxShape.circle,
            color: AppColor.gray4),
        child: Padding(
          padding: getPadding(top: 7,bottom: 7,right: 7,left: 7),
          child: Column(
            children: [
              CustomImageView(
                imagePath: icon,
                color: AppColor.green1,
              ),
              Text(title,
                  textAlign: TextAlign.center,
                  style: theme
                      .textTheme.bodyLarge?.copyWith(
                    color: AppColor.gray3,fontSize: 14,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
