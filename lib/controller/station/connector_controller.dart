import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';
import 'package:vision1/core/functions/handingdatacontroller.dart';
import 'package:vision1/data/datasource/station/connector_data.dart';
import 'package:vision1/data/model/stationmodel/station_info_model.dart';

import '../../core/class/statusrequest.dart';
import '../../core/services/services.dart';
import '../../data/model/stationmodel/conctore_model.dart';


abstract class  ConnectorController  extends GetxController
{
  initialData();
  getInfo(String stationId);
  delete(String stationId);
  add(ConnectorModel connectorModel);

}



class ConnectorControllerImp extends ConnectorController
{
  List connectorInfo=[];


  late StatusRequest statusRequest;
  MyServices myServices = Get.find();
  ConnectorData connectorData =ConnectorData(Get.find());


  @override
  void onInit() {
    initialData();
  }


  @override
  getInfo(String stationId) async{
    statusRequest = StatusRequest.loading;
    var response=await connectorData.getData(stationId);
    statusRequest=handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List data = response['data'];
        connectorInfo.addAll(data.map((e) => StationInfoModel.fromJson(e)));
        if (connectorInfo.isEmpty){
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
  add(ConnectorModel connectorModel) async{
    statusRequest = StatusRequest.loading;
    var response=await connectorData.addData(connectorModel);

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

  @override
  delete(String stationId) async{
    statusRequest = StatusRequest.loading;
    var response=await connectorData.deleteData(stationId);

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