import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/theme/color.dart';

import '../../app_rout.dart';
import '../../core/app_decoration.dart';
import '../../core/assets/image_constant.dart';
import '../../core/button_theme_helper.dart';
import '../../core/custom_image_view.dart';
import '../../core/text_theme_helper.dart';
import '../../core/theme_helper.dart';
import '../widgets/utlis/custom_elevated_button.dart';



class ReviewBookingScreen extends StatefulWidget {
  const ReviewBookingScreen({super.key});

  @override
  State<ReviewBookingScreen> createState() => _ReviewBookingScreenState();
}

class _ReviewBookingScreenState extends State<ReviewBookingScreen> {

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
            color: appTheme.white,
            child: Scaffold(
                backgroundColor: theme.colorScheme.primary,


                body: SingleChildScrollView(
                  child: Container(
                      width: double.maxFinite,
                      padding: getPadding(top: 19, bottom: 19),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Padding(
                                padding: getPadding(right: 16, top: 21),
                                child:const Text("المركبة",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: AppColor.primary))),
//vehicle info
                            Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapRowrectangle440();
                                    },
                                    child: Container(
                                        margin:
                                        getMargin(left: 16, top: 20, right: 16),
                                        padding: getPadding(
                                            left: 16, top: 8, right: 16, bottom: 8),
                                        decoration: AppDecoration.fill1.copyWith(
                                            borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                        child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                  ImageConstant.imgOlaImage,
                                                  height: getVerticalSize(91),
                                                  width: getHorizontalSize(159)),
                                              Padding(
                                                  padding: getPadding(left: 16, top: 18, right: 94, bottom: 16),
                                                  child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Text("Ola",
                                                            overflow: TextOverflow.ellipsis,
                                                            style: theme.textTheme.titleMedium),
                                                        Padding(
                                                            padding:
                                                            getPadding(top: 13),
                                                            child: Row(children: [
                                                              Text("Model S1 pro",
                                                                  overflow: TextOverflow.ellipsis,
                                                                  style: theme.textTheme.bodyLarge),
                  
                                                            ]))
                                                      ]))
                                            ])))),

                         //title
                            Padding(
                                padding: getPadding(right: 16, top: 21),
                                child:const Text("محطة الشحن",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: AppColor.primary))),

//station info
                            Padding(
                              padding: getPadding(all: 16),
                              child: Container(
                                decoration: AppDecoration.fill1.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                                child: Padding(
                                  padding: getPadding(all: 16),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: getSize(204),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Charge required",style:  TextThemeHelper.bodyLargeOpenSansgray400,),
                                                SizedBox(height: getVerticalSize(8),),
                                                Text("12 Units",style:  TextThemeHelper.bodymedium16black400)
                  
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: getSize(108),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Charger type",style:  TextThemeHelper.bodyLargeOpenSansgray400,),
                                                SizedBox(height: getVerticalSize(8),),
                                                Text("AC Type-2",style:  TextThemeHelper.bodymedium16black400)
                  
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: getVerticalSize(16),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Location",style:  TextThemeHelper.bodyLargeOpenSansgray400,),
                                              SizedBox(height: getVerticalSize(8),),
                                              Container(
                                                  width:getSize(204),child: Text("4517 Washington Ave. Manchester, Kentucky 39495",style:  TextThemeHelper.bodymedium16black400))
                  
                                            ],
                                          ),
                                          Container(
                                            width: getSize(108),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text("Arrival time",style:  TextThemeHelper.bodyLargeOpenSansgray400,),
                                                SizedBox(height: getVerticalSize(8),),
                                                Text("10 Minutes",style:  TextThemeHelper.bodymedium16black400)
                  
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          //price info
                          Padding(
                            padding: getPadding(left: 16,right: 16),
                            child: Container(
                              decoration: AppDecoration.fill1.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder16),
                              child: Padding(
                                padding: getPadding(all: 16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                         const    Text("المبلغ",
                                                overflow:
                                                TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.normal, color: AppColor.primary,fontSize: 14)),
                                            Text("231\$",
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                textAlign:
                                                TextAlign.left,
                                                style: TextThemeHelper
                                                    .bodyLargeSFProText)
                                          ]),
                                      Padding(
                                          padding: getPadding(top: 20),
                                          child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                              const   Text("موتور",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                              fontWeight: FontWeight.normal, color: AppColor.primary,fontSize: 14
                                          )
                                              ),
                                                Text(
                                                    "free",
                                                    overflow:
                                                    TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                    TextAlign.left,
                                                    style: TextThemeHelper
                                                        .bodyLargeSFProText)
                                              ])),
                                      SizedBox(height: getVerticalSize(16),),
                                      Divider(color: appTheme.borderColor,),
                                      Padding(
                                          padding: getPadding(top: 16),
                                          child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                               const Text("المجموع",
                                                    overflow: TextOverflow.ellipsis,
                                                    style:TextStyle(
                                                      fontWeight: FontWeight.bold, color: AppColor.primary,fontSize: 18
                                                    )),
                                                Text(
                                                    "3200\$",
                                                    overflow:
                                                    TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                    TextAlign.left,
                                                    style: TextThemeHelper
                                                        .titleLargeSFProText)
                                              ]))
                                    ]),
                              ),
                            ),
                          )
                          ])),
                ),

                bottomNavigationBar: CustomElevatedButton(
                    text: "حجز الشحن",
                    margin: getMargin(left: 16, right: 16, bottom: 40),
                    buttonStyle: ButtonThemeHelper.fillGreen600.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(54)))),
                    buttonTextStyle: TextThemeHelper.titleMediumPrimary,
                    onTap: () {
                      onTapPaynow();
                    })));
  }

  onTapArrowleft15() {
    Get.back();
  }

  onTapPaynow() {
    Get.toNamed(
      AppRoutes.successBooking,
    );
  }

  onTapRowrectangle440() {
    Get.toNamed(
      AppRoutes.addVehicleDetailsScreen,
    );
  }

  onTapCar() {

  }
}







