import 'package:get/get.dart';

class VehicleModel {
  Rx<String> teslamodelthreeTxt = Rx("Tesla model 3");

  Rx<String> parkedTxt = Rx("Parked");

  Rx<String> fortyfiveTxt = Rx("45%");

  String? id;
  String? vehicleImage;
  String? vehicleBrand;
  String? vehicleModel;
  String? vehicleWheeler;
  String? chargeType;
  String? timeOfFullCharge;
  String? chargePort;


  VehicleModel(
  {  this.id,
      this.vehicleImage,
      this.vehicleBrand,
      this.vehicleModel,
      this.chargeType,
      this.timeOfFullCharge,
    this.vehicleWheeler,
      this.chargePort});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["vehicle_id"] = id;
    data["vehicle_image"] = vehicleImage;
    data["vehicle_brand"] = vehicleBrand;
    data["vehicle_model"] = vehicleModel;
    data["vehicle_wheeler"] = vehicleWheeler;
    data["charge_type"] = chargeType;
    data["time_full_charge"] =timeOfFullCharge ;
    data["charge_port"] =chargePort ;

    return data;
  }

  VehicleModel.fromJson(Map<String, dynamic> data) {
    id = data["vehicle_id"];
    vehicleImage = data["vehicle_image"];
    vehicleBrand = data["vehicle_brand"];
     vehicleModel= data["vehicle_model"];
    chargeType = data["charge_type"];
    timeOfFullCharge = data["time_full_charge"];
    chargePort = data["charge_port"];
    vehicleWheeler= data["vehicle_wheeler"] ;



  }
}
