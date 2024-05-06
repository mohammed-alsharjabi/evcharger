
import 'package:get/get.dart';

import '../models/favorite_list_model.dart';
import '../models/listrectangle44_item_model.dart';

class FavoriteListController extends GetxController {

  // Rx<FavoriteListModel> favoriteListModelObj;
   List<Listrectangle44ItemModel> favoriteListModelObj = FavoriteListModel.listrectangle44ItemList();

  void setLikePos(Listrectangle44ItemModel listrectangle44itemModelObj) {
    listrectangle44itemModelObj.isFavorite = !listrectangle44itemModelObj.isFavorite!;
    update();

  }
}
