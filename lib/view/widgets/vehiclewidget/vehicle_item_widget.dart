import 'package:get/get.dart';

import '../../../../core/app_decoration.dart';
import '../../../../core/assets/image_constant.dart';
import '../../../../core/custom_image_view.dart';
import '../../../../core/text_theme_helper.dart';
import '../../../../core/theme_helper.dart';
import '../../../../controller/vehicle_controller.dart';
import 'package:flutter/material.dart';

import '../../../data/model/vehicle_model.dart';

// ignore: must_be_immutable
class VehicleItemWidget extends StatelessWidget {
  VehicleItemWidget(
      this.vehicleModel, {
        Key? key,
        this.onTapColumnrectangle,
      }) : super(
    key: key,
  );

  VehicleModel vehicleModel ;

  var controller = Get.find<VehicleControllerImp>();

  VoidCallback? onTapColumnrectangle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnrectangle?.call();
      },
      child: Container(
        padding: getPadding(left: 16, top: 15, right: 16, bottom: 15,),
        decoration: AppDecoration.fill1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle440789x155,
              height: getVerticalSize(89,),
              width: getHorizontalSize(155,),
            ),
            Padding(
              padding: getPadding(top: 18,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(bottom: 1,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Padding(
                          padding: getPadding(left: 5,),
                          child: Obx(
                                () => Text(
                              vehicleModel.teslamodelthreeTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),


                        Padding(
                          padding: getPadding(top: 13,),
                          child: Obx(
                                () => Text(
                              vehicleModel.parkedTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(left: 11, top: 9,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          margin: getMargin(left: 7, right: 7,),
                          decoration: AppDecoration.fill5.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder2,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: getSize(13,),
                                width: getSize(13,),
                                margin: getMargin(top: 13,),
                                decoration: BoxDecoration(
                                  color: appTheme.green600,
                                  borderRadius: BorderRadius.circular(getHorizontalSize(3,),),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Obx(
                              () => Text(
                            vehicleModel.fortyfiveTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextThemeHelper.labelLargeOpenSansOnError,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
