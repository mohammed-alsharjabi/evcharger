import 'package:colorful_safe_area/colorful_safe_area.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_rout.dart';
import '../../../core/app_decoration.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme_helper.dart';
import '../../widgets/utlis/custom_elevated_button.dart';
import 'controller/my_vehicle_controller.dart';
import 'models/gridrectangle44_item_model.dart';
// import 'models/gridrectangle44_item_model.dart';




class MyVehicleScreen extends StatefulWidget {
  const MyVehicleScreen({super.key});

  @override
  State<MyVehicleScreen> createState() => _MyVehicleScreenState();
}

class _MyVehicleScreenState extends State<MyVehicleScreen> {

 MyVehicleController controller = Get.put(MyVehicleController());

 @override
 Widget build(BuildContext context) {
  return WillPopScope(
      onWillPop: () async {
       Get.back();
       return true;
      },
      child: ColorfulSafeArea(
          color: appTheme.white,
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,

              body: ListView.builder(
                padding: getPadding(left: 16,right: 16),
                primary: false,
                shrinkWrap: true,
                itemCount: controller.getMyvehicleData.length,
                itemBuilder: (context, index) {
                  Gridrectangle44ItemModel data = controller.getMyvehicleData[index];
                return Padding(
                  padding: getPadding(top: 8,bottom: 8),
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.vehicleDetailsScreen);
                    },
                    child: Container(
                      decoration: AppDecoration.fill1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Padding(
                        padding: getPadding(left: 16,right: 16,top: 14,bottom: 14),
                        child: Row(
                          children: [
                            Container(
                              height: getSize(82),
                              width: getSize(124),
                              child: CustomImageView(
                                imagePath: data.vehicleImage,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(width: getHorizontalSize(16),),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(data.vehicleModelName!,style: TextThemeHelper.titleMediumOpenSans,),
                                SizedBox(height: getVerticalSize(16),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CustomImageView(imagePath: ImageConstant.imgCharges1stIcon,
                                        height: getSize(24),
                                        width: getSize(24),),
                                        Text("Type ${data.type!}",style: TextThemeHelper.bodymedium16black400,),
                                      ],
                                    ),
                                    SizedBox(width: getHorizontalSize(16),),
                                    Row(
                                      children: [
                                        CustomImageView(imagePath: ImageConstant.imgPlug5th,
                                          height: getSize(24),
                                          width: getSize(24),),
                                        Text("CCS ${data.ccs!}",style: TextThemeHelper.bodymedium16black400,),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },),






              bottomNavigationBar: CustomElevatedButton(
                  text: "اضافة مركبة",
                  margin: getMargin(left: 16, right: 16, bottom: 39),
                  buttonStyle: ButtonThemeHelper.fillGreen600.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, getVerticalSize(54)))),
                  buttonTextStyle: TextThemeHelper.titleMediumPrimary,
                  onTap: () {
                   onTapAddvehicle();
                  }))));
 }

 onTapColumnrectangle() {
  Get.toNamed(AppRoutes.vehicleDetailsScreen);
 }

 onTapArrowleft18() {
  Get.back();
 }


 onTapAddvehicle() {
  Get.toNamed(
   AppRoutes.addVehicleDetailsScreen,
  );
 }
}






