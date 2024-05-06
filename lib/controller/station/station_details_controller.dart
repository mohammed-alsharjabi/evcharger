import 'package:flutter/material.dart';
import 'package:get/get.dart';


class StationDetailsModel { }

class StationDetailsController extends GetxController {
  TextEditingController frame34011Controller = TextEditingController();
  TextEditingController group38200Controller = TextEditingController();
  TextEditingController locationtwoController = TextEditingController();
  PageController pageController = PageController();
  Rx<StationDetailsModel> stationDetailsModelObj = StationDetailsModel().obs;
  int currentPage = 0+1;

  void setCurrentPage(index){
    currentPage = index+1;
    update();
  }

}


