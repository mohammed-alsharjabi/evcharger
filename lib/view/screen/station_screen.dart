
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/app_decoration.dart';
import 'package:vision1/data/datasource/statics/test_data.dart';

import '../../app_rout.dart';
import '../../controller/station/station_details_controller.dart';
import '../../core/assets/image_constant.dart';
import '../../core/button_theme_helper.dart';
import '../../core/custom_image_view.dart';
import '../../core/text_theme_helper.dart';
import '../../core/theme_helper.dart';
import '../widgets/station/conctore_item.dart';
import '../widgets/station/stataion_images.dart';
import '../widgets/station/station_info_widget.dart';
import '../widgets/utlis/custom_elevated_button.dart';
import 'review_booking_screen/review_booking_screen.dart';


class StationScreen extends GetView<StationDetailsController> {
  StationDetailsController stationDetailsController =
  Get.put(StationDetailsController());

  StationScreen({super.key});


  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
        onWillPop: () async {
          Get.back();
          return true;
        },
        child:  Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: theme.colorScheme.primary,
                  body: GetBuilder<StationDetailsController>(
                    init: StationDetailsController(),
                    builder: (controller) => Container(
                      child:
                      Stack(
                        children: [
                          Padding(
                            padding: getPadding(bottom: 100),
                            child: Column(
                              children: [

                                 //station image

                               const  StationImages(),



                                //station information
                                Expanded(child:
                                ListView(
                                  physics:const  BouncingScrollPhysics(),
                                  children: [
                                    SizedBox(height: getVerticalSize(24),),
                                    StationInfoWidget(stationInfo: TestData.stationInfoModel),



                                    Padding(
                                      padding: getPadding(all: 16),
                                      child: Text("الشحن : ",
                                          overflow: TextOverflow
                                              .ellipsis,

                                          style: TextThemeHelper
                                              .bodymedium16black
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
                                      padding: getPadding(all: 16),
                                      child: Text("الشحن : ",
                                          overflow: TextOverflow
                                              .ellipsis,

                                          style: TextThemeHelper
                                              .bodymedium16black
                                      ),
                                    ),


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
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.infinity,
                              color: appTheme.white,
                              child: Padding(
                                  padding: getPadding(
                                      top: 32,
                                      left: 16,
                                      right: 16,
                                      bottom: 40),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Expanded(
                                          child: CustomElevatedButton(
                                              text:
                                              "الموقع",
                                              buttonStyle: ButtonThemeHelper
                                                  .fillwhiteborder12
                                                  .copyWith(
                                                  fixedSize: MaterialStateProperty.all<Size>(Size(
                                                      double.infinity,
                                                      getVerticalSize(
                                                          54)))),
                                              buttonTextStyle:
                                              TextThemeHelper
                                                  .titleMediumGreen600,
                                              onTap: () {
                                                Get.toNamed("AppRoutes.locationMap2Screen");
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
                                                      getVerticalSize(
                                                          54)))),
                                              buttonTextStyle:
                                              TextThemeHelper
                                                  .titleMediumPrimary,
                                              onTap: () {

                                                Get.to(ReviewBookingScreen());
                                                // onTapLogout();
                                              }),
                                        )
                                      ])),
                            ),
                          )
                        ],
                      ),
                    ),
                  )



              ))
    ;
  }

  onTapArrowleft11() {
    Get.back();
  }

  // ignore: non_constant_identifier_names
  Widget amenities_data_formate(title,icon){
    return   Expanded(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(12)),
            color: appTheme.gray50),
        child: Padding(
          padding: getPadding(top: 16,bottom: 14),
          child: Column(
            children: [
              CustomImageView(
                imagePath: icon,
              ),
              Text(title,  overflow:
              TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme
                      .textTheme.bodyLarge)
            ],
          ),
        ),
      ),
    );
  }
}
