


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/model/onboardingmodel/onboarding_one_model.dart';
import '../data/model/onboardingmodel/slidergetyoursm_item_model.dart';

class OnboardingController extends GetxController {
  Rx<OnboardingModel> onboardingOneModelObj = OnboardingModel().obs;

  List<SlidergetyoursmItemModel> onboardingData = OnboardingModel.slidergetyoursmItemList();

  PageController pageController = PageController();

  Rx<int> sliderIndex = 0.obs;
  int currentPage = 0;

  void setCurrentPage(int value) {
    currentPage = value;
    update();
  }
}

