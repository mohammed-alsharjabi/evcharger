import 'package:get/get.dart';
import 'package:vision1/core/assets/image_constant.dart';
import 'package:vision1/core/functions/handingdatacontroller.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/alertexitapp.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/list_favorite_data.dart';
import '../data/datasource/statics/favorite_list_model.dart';
import '../data/model/list_favorite_item_model.dart';

abstract class FavoriteListController extends GetxController {
  setLikePos(ListFavoriteItemModel listFavoriteItemModel);
  getData();
  removeFavorite(String stationId);
  addFavorite(String stationId);
}

class FavoriteListControllerImp extends FavoriteListController {
  List<ListFavoriteItemModel> favoriteListModelObj =
      FavoriteListModelData.getListFavoriteData();

  late StatusRequest statusRequest;
  List<ListFavoriteItemModel> favoriteStore = [];
  MyServices myServices = Get.find();
  ListFavoriteData favoriteData = ListFavoriteData(Get.find());
  late String? userId;

  @override
  void setLikePos(ListFavoriteItemModel listFavoriteItemModel) {
    listFavoriteItemModel.isFavorite = !listFavoriteItemModel.isFavorite!;
    update();
  }

  @override
  addFavorite(String stationId) async {
    statusRequest = StatusRequest.loading;
    var response =
        await favoriteData.addData(stationId: stationId, userId: userId!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        alertMessageApp(
            title: "تم الاضافة",
            subtitle: "ستضهر في قائمة المفضلة",
            icon: ImageConstant.imgDetails,
            onConfirm: () {
              Get.back();
            });
      } else {
        alertMessageApp(
            title: "حدث خطأ ",
            subtitle: "لم يتم الاضافة ",
            icon: ImageConstant.imgFavorite,
            onConfirm: () {
              Get.back();
            });
      }
    }
  }

  @override
  removeFavorite(String stationId) async {
    statusRequest = StatusRequest.loading;
    var response =
        await favoriteData.deleteData(stationId: stationId, userId: userId!);
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

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.getData(userId!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List data = response['data'];
        favoriteStore
            .addAll(data.map((e) => ListFavoriteItemModel.fromJson(e)));
        if (favoriteStore.isEmpty) {
          statusRequest = StatusRequest.failure;
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }

  @override
  void onInit() {
    userId = myServices.sharedPreferences.getString("user_id");
    getData();
  }
}
