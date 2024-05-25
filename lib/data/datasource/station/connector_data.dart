
import '../../../core/class/crud.dart';
import '../../../linkapi.dart';
import '../../model/stationmodel/conctore_model.dart';

class ConnectorData {
  Crud crud;
  ConnectorData(this.crud);

  getData(String stationId) async {
    var response =
    await crud.postData(AppLink.connectorView, {"station_id": stationId});
    return response.fold((l) => l, (r) => r);
  }

  addData( ConnectorModel connectorModel) async {
    var response = await crud.postData(AppLink.connectorAdd, connectorModel.toJson()
    );
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String stationId) async {
    var response =
    await crud.postData(AppLink.connectorDelete, {"station_id": stationId});
    return response.fold((l) => l, (r) => r);
  }


  editeData(String stationId,ConnectorModel connectorModel ) async {
    var response =
    await crud.postData(AppLink.stationEdit,connectorModel.toJson());
    return response.fold((l) => l, (r) => r);
  }




}
