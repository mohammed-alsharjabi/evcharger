import '../../../../core/assets/image_constant.dart';
import 'gridrectangle44_item_model.dart';

class MyVehicleModel {
  // Rx<List<Gridrectangle44ItemModel>> gridrectangle44ItemList =
  //     Rx(List.generate(4, (index) => Gridrectangle44ItemModel()));

  static List<Gridrectangle44ItemModel> gridrectangle44ItemList(){
    return [
    Gridrectangle44ItemModel(ImageConstant.imgMyvehicle1st,"Tesla model 3","2","2"),
    Gridrectangle44ItemModel(ImageConstant.imgMyvehicle2nd,"Ola s1 pro","3","3"),
    Gridrectangle44ItemModel(ImageConstant.imgMyvehicle3rd,"Tesla model s","2","2"),
    Gridrectangle44ItemModel(ImageConstant.imgMyvehicle4th,"Ather 450x","3","3"),
    ];
  }
}
