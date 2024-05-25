
import 'package:vision1/data/model/vehicle_model.dart';
import '../../../core/class/crud.dart';
import '../../../linkapi.dart';


class VehicleData {
  Crud crud;
  VehicleData(this.crud);
  getData(String vehicle) async {
    var response =
    await crud.postData(AppLink.vehicleView, {"vehicle_id": vehicle});
    return response.fold((l) => l, (r) => r);
  }

  getAll(String userId) async {
    var response =
    await crud.postData(AppLink.vehicleAll, {"user_id": userId});
    return response.fold((l) => l, (r) => r);
  }



  add( VehicleModel  vehicleModel) async {
    var response = await crud.postData(AppLink.vehicleAdd,vehicleModel.toJson() );
    return response.fold((l) => l, (r) => r);
  }

  delete(String vehicleId) async {
    var response =
    await crud.postData(AppLink.vehicleDelete, {"vehicle_id": vehicleId});
    return response.fold((l) => l, (r) => r);
  }


  editeData(VehicleModel vehicleModel) async {
    var response =
    await crud.postData(AppLink.vehicleEdite, vehicleModel.toJson());
    return response.fold((l) => l, (r) => r);
  }




}
