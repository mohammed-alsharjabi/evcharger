
import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class StationData {
  Crud crud;
  StationData(this.crud);
  getData(String stationId) async {
    var response =
        await crud.postData(AppLink.addressView, {"station_id": stationId});
    return response.fold((l) => l, (r) => r);
  }

  addData(String stationId, String name, String city,
      String street,String coast,String open) async {
    var response = await crud.postData(AppLink.addressAdd, {
      "station_id": stationId,
      "name": name,
      "city": city,
      "street": street,
      "coast": coast,
      "open": open,
    });
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String stationId) async {
    var response =
        await crud.postData(AppLink.addressDelete, {"station_id": stationId});
    return response.fold((l) => l, (r) => r);
  }
}
