import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/splash_controller.dart';
import '../../core/assets/image_constant.dart';
import '../../core/custom_image_view.dart';
import '../../core/text_theme_helper.dart';
import '../../core/theme_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashOneScreenState();
}

class _SplashOneScreenState extends State<SplashScreen> {

  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return  ColorfulSafeArea(
        color: appTheme.white,
        child: Scaffold(
            backgroundColor: appTheme.green600,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgAirplane,
                          height: getSize(94),
                          width: getSize(94)),
                      Padding(
                          padding: getPadding(top: 25, bottom: 5),
                          child: Text("app_name".tr,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextThemeHelper.displaySmallPrimary
                          )
                      )
                    ]))));
  }
}




