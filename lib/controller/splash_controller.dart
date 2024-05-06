import 'dart:async';

import 'package:get/get.dart';
import 'package:vision1/core/services/services.dart';

import '../app_rout.dart';


class SplashController extends GetxController {


  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      _getIsFirst();
    });
  }

  _getIsFirst() async {
    bool isSignIn = await MyServices.getIsSignIn();
    bool isIntro = await MyServices.getIsIntro();
    Timer(const Duration(seconds: 3), () {
      print("is intro ====== $isIntro");
      print("isSignIn ====== $isSignIn");
      if (isIntro) {
        Get.toNamed(AppRoutes.onboardingScreen);
      } else if (isSignIn) {
        Get.toNamed(AppRoutes.login);
      } else {
        Get.toNamed(AppRoutes.homeScreen);

      }
    });
  }
}
