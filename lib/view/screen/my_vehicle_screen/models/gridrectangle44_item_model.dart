import 'package:get/get.dart';

/// This class is used in the [gridrectangle44_item_widget] screen.

class Gridrectangle44ItemModel {
  Rx<String> teslamodelthreeTxt = Rx("Tesla model 3");

  Rx<String> parkedTxt = Rx("Parked");

  Rx<String> fortyfiveTxt = Rx("45%");

  Rx<String>? id = Rx("");


  String? vehicleImage;
  String? vehicleModelName;
  String? type;
  String? ccs;
  Gridrectangle44ItemModel(this.vehicleImage,this.vehicleModelName,this.type,this.ccs);
}
