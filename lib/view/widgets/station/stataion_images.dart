import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/controller/station/station_controller.dart';

import '../../../core/assets/image_constant.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/theme_helper.dart';


class StationImages extends GetView<StationControllerImp> {
   StationImages({super.key,required  this.img});

String  img;
  @override
  Widget build(BuildContext context) {
    return     Container(
        height: getSize(310),
        width: double.infinity,
        padding: EdgeInsets.zero,
        child: Stack(
          children: [




            //station image view
            PageView.builder(
              onPageChanged: (value) {
                controller.setCurrentPage(value);
              },
              itemCount: 3,
              controller: controller.pageController,
              itemBuilder: (context, index) {
                return CustomImageView(
                  imagePath:
                  img,
                );
              },
            ),








            Padding(
              padding: getPadding(all: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [



                  //btn  favorite and back
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      //btn arrow left
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: Container(
                          height: getSize(36),
                          width: getSize(36),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: appTheme.white),
                          child: Padding(
                            padding: getPadding(all: 7),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgarrowLeft,
                            ),
                          ),
                        ),
                      ),

                      //btn favorite
                      Container(
                        height: getSize(36),
                        width: getSize(36),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: appTheme.white),
                        child: Padding(
                          padding: getPadding(all: 7),
                          child: CustomImageView(
                            color: appTheme.black,
                            imagePath: ImageConstant.imgFavorite,
                          ),
                        ),
                      )
                    ],
                  ),








                  //count picture
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(24)),
                        color: appTheme.white),
                    child: Padding(
                      padding: getPadding(top: 8,bottom: 8,left: 20,right: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(controller.currentPage.toString(),
                              style:TextStyle(
                                  fontSize: getFontSize(16),
                                  fontWeight: FontWeight.w400,
                                  color: appTheme.buttonColor
                              )),
                          Text(" / 3",style:TextStyle(
                              fontSize: getFontSize(16),
                              fontWeight: FontWeight.w400,
                              color: appTheme.black
                          )),
                        ],
                      ),
                    ),
                  )




                ],
              ),
            ),
          ],
        ));


  }
}

