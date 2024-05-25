

import 'package:vision1/data/model/list_favorite_item_model.dart';

import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class ListFavoriteData {
  Crud crud;
  ListFavoriteData(this.crud);

  getData(String userId) async {
    var response =
    await crud.postData(AppLink.favoriteView, {"user_id": userId});
    return response.fold((l) => l, (r) => r);
  }

  addData( { required String stationId,required String userId} ) async {
    var response = await crud.postData(AppLink.favoriteAdd, {
      "station_id":stationId,
      "user_id":userId
    }
    );
    return response.fold((l) => l, (r) => r);
  }

  deleteData({required String stationId,required String userId}) async {
    var response =
    await crud.postData(AppLink.favoriteDelete, {"user_id": userId,
      "station_id": stationId});
    return response.fold((l) => l, (r) => r);
  }




}
