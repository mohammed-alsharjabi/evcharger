import 'package:get/get.dart';
import 'package:vision1/data/datasource/remote/vehicle_data.dart';
import 'package:vision1/linkapi.dart';
import '../core/assets/image_constant.dart';
import '../core/class/statusrequest.dart';
import '../core/functions/alertexitapp.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/datasource/statics/vehicle_data_test.dart';
import '../data/model/vehicle_model.dart';
import 'package:http/http.dart' as http;

abstract class VehicleController extends GetxController {
  initialData();
  getData(String vehicle);
  getAll();
  delete(String vehicleId);
  edite(VehicleModel vehicleModel);
  add(VehicleModel vehicleModel);
}

class VehicleControllerImp extends VehicleController {
  List<VehicleModel> getMyvehicleData = VehicleDataTest.getVehicleDataTest();

  late StatusRequest statusRequest;
  List<VehicleModel> listVehicle = [];
  MyServices myServices = Get.find();
  VehicleData vehicleData = VehicleData(Get.find());

  @override
  add(VehicleModel vehicleModel) async {
    statusRequest = StatusRequest.loading;
    var response = await vehicleData.add(vehicleModel);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        alertMessageApp(
            title: "تم الاضافة بنجاح",
            subtitle: "نجحت عملية الاضافة ",
            icon: ImageConstant.imgDetails,
            onConfirm: () {
              Get.back();
            });
      } else {
        alertMessageApp(
            title: "حدث خطأ ",
            subtitle: " لم تتم الاضافة ",
            icon: ImageConstant.imgFavorite,
            onConfirm: () {
              Get.back();
            });
      }
    }
  }

  @override
  delete(String vehicleId) async {
    statusRequest = StatusRequest.loading;
    var response = await vehicleData.delete(vehicleId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        alertMessageApp(
            title: "تم الازالة",
            subtitle: "التأكيد على الازالة من المفضلة",
            icon: ImageConstant.imgDetails,
            onConfirm: () {
              Get.back();
            });
      } else {
        alertMessageApp(
            title: "حدث خطأ ",
            subtitle: " لم تتم الازالة ",
            icon: ImageConstant.imgFavorite,
            onConfirm: () {
              Get.back();
            });
      }
    }
  }

  bool checkData(brand, model, chargePort, chargeType, wheeler, time) {
    bool f = false;
    if (brand != "" &&
        model != "" &&
        chargeType != "" &&
        chargePort != "" &&
        wheeler != "" &&
        time != "") {
      f = true;
    }
    return f;
  }

  @override
  edite(VehicleModel vehicleModel) {}


  @override
  getData(String vehicle) async {
    statusRequest = StatusRequest.loading;
    var response = await vehicleData.getData(vehicle);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List data = response['data'];
        listVehicle.addAll(data.map((e) => VehicleModel.fromJson(e)));
        if (listVehicle.isEmpty) {
          statusRequest = StatusRequest.failure;
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }

  @override
  getAll() async {
    String? userId = myServices.sharedPreferences.getString("user_id");
    statusRequest = StatusRequest.loading;
    var response = await vehicleData.getAll(userId!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List data = response['data'];
        listVehicle.addAll(data.map((e) => VehicleModel.fromJson(e)));
        if (listVehicle.isEmpty) {
          statusRequest = StatusRequest.failure;
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }



  @override
  initialData() {
    // getAll();
  }
}
