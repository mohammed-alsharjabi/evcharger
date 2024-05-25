import '../../../core/assets/image_constant.dart';
import '../../model/vehicle_model.dart';

class VehicleDataTest {
  static List<VehicleModel> getVehicleDataTest() {
    return [
      VehicleModel(
          id: "1",
          chargePort: "ccs",
          chargeType: "AC",
          timeOfFullCharge: "30h",
          vehicleBrand: "Tesla model",
          vehicleImage: ImageConstant.imgMyvehicle1st,
          vehicleModel: "2019"),

      VehicleModel(
          id: "1",
          chargePort: "type 1",
          chargeType: "AC",
          timeOfFullCharge: "30h",
          vehicleBrand: "Ola s1 pro",
          vehicleImage: ImageConstant.imgMyvehicle2nd,
          vehicleModel: "2021"),

      VehicleModel(
          id: "1",
          chargePort: "type 3",
          chargeType: "DC",
          timeOfFullCharge: "30h",
          vehicleBrand: "Hondia  pro",
          vehicleImage: ImageConstant.imgMyvehicle3rd,
          vehicleModel: "2023"),

      VehicleModel(
          id: "1",
          chargePort: "type 3",
          chargeType: "DC",
          timeOfFullCharge: "30h",
          vehicleBrand: "Ather 450x",
          vehicleImage: ImageConstant.imgMyvehicle4th,
          vehicleModel: "2023"),

    ];
  }
}
