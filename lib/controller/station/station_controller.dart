import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';
import 'package:vision1/core/functions/handingdatacontroller.dart';
import 'package:vision1/data/model/stationmodel/station_info_model.dart';

import '../../core/class/statusrequest.dart';
import '../../core/services/services.dart';
import '../../data/datasource/station/station_data.dart';


abstract class  StationController  extends GetxController
{
  initialData();
  getInfo(String stationId);
  getImage(String stationId);
  deleteStation(String stationId);
  addStation(StationInfoModel stationInfoModel);

}



class StationControllerImp extends StationController
{
  List<StationInfoModel> stationInfo=[];
  // List stationImage=[];
  late StatusRequest statusRequest;
  int currentPage = 0+1;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();


  MyServices myServices = Get.find();
StationData stationData=StationData(Get.find());
  PageController pageController = PageController();

  void setCurrentPage(index){
    currentPage = index+1;
    update();
  }

@override
  void onInit() {
   // initialData();
 statusRequest= StatusRequest.success;
  }


  @override
  getImage(String stationId) async
  {

  }

  @override
  getInfo(String stationId) async{
    statusRequest = StatusRequest.loading;
    var response=await stationData.getData(stationId);
    statusRequest=handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List data = response['data'];
        stationInfo.addAll(data.map((e) => StationInfoModel.fromJson(e)));
        if (stationInfo.isEmpty){
          statusRequest = StatusRequest.failure ;
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }

    update();
  }

  @override
  initialData() {
   String stationId = Get.arguments['stationId'];
   getInfo(stationId);

  }

  @override
  addStation(StationInfoModel stationInfoModel) async{
    if(formstate.currentState!.validate()){
      statusRequest = StatusRequest.loading;
      var response=await stationData.addData(stationInfoModel);
      update();
      print("=============================== Controller $response ");

      statusRequest = handlingData(response);

      if(StatusRequest.success==statusRequest)
      {
        // Start backend
        if (response['status'] == "success") {
          Get.offAllNamed(AppRoutes.homeScreen);
        } else {
          statusRequest = StatusRequest.failure;
        }
        // End
      }

    }


  }

  @override
  deleteStation(String stationId) async{
    statusRequest = StatusRequest.loading;
    var response=await stationData.deleteData(stationId);

    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if(StatusRequest.success==statusRequest)
    {
      // Start backend
      if (response['status'] == "success") {

        Get.offNamed(AppRoutes.stationScreen);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }

  }




}