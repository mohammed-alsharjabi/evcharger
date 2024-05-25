
import '../../../core/class/crud.dart';
import '../../../linkapi.dart';


class TesterData {
  Crud crud;

  TesterData(this.crud);

  getData(String vehicle) async {
    var response =
    await crud.postData(AppLink.vehicleView, {"vehicle_id": vehicle});
    return response.fold((l) => l, (r) => r);
  }


  getPost() async {
    var response =
    await crud.postData(AppLink.post, {});
    return response.fold((l) => l, (r) => r);

  }


}