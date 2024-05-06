import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../app_rout.dart';
import '../services/services.dart';

class  SplashMidWare extends GetMiddleware
{
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (MyServices.getIsIntro()) {
      return const RouteSettings(name: AppRoutes.onboardingScreen);
    }
    else if (MyServices.getIsSignIn()) {
      return const RouteSettings(name: AppRoutes.login);
    }




    return null;
  }


}