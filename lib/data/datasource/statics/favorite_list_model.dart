import '../../../core/assets/image_constant.dart';
import '../../model/list_favorite_item_model.dart';
class FavoriteListModelData {

  static List<ListFavoriteItemModel> getListFavoriteData(){
    return [
      ListFavoriteItemModel("1",ImageConstant.imgFavouritestation1st,"Supercharger station","1901 Thorn ridge Cir. Shiloh, Hawaii","4.5 km","88",false ),
      ListFavoriteItemModel("2",ImageConstant.imgFavouritestation2nd,"E-motion station","1901 Thorn ridge Cir. Shiloh, Hawaii","4.5 km","80",false),
      ListFavoriteItemModel("3",ImageConstant.imgFavouritestation3rd,"Envirocar station","1901 Thorn ridge Cir. Shiloh, Hawaii","4.5 km","90",false),
      ListFavoriteItemModel("4",ImageConstant.imgFavouritestation4th,"Pulse station","1901 Thorn ridge Cir. Shiloh, Hawaii","4.5 km","86",false),
      ListFavoriteItemModel("5",ImageConstant.imgFavouritestation5th,"Momentum station","1901 Thorn ridge Cir. Shiloh, Hawaii","4.5 km","82",false),
      ListFavoriteItemModel("6",ImageConstant.imgFavouritestation6th,"Supercharger station","1901 Thorn  ridge Cir. Shiloh, Hawaii","4.5 km","87",false),
    ];
  }
}
