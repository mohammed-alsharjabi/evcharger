
import 'package:get/get.dart';

import '../models/gridrectangle44_item_model.dart';
import '../models/my_vehicle_model.dart';

class MyVehicleController extends GetxController {
  Rx<MyVehicleModel> myVehicleModelObj = MyVehicleModel().obs;
  List<Gridrectangle44ItemModel> getMyvehicleData = MyVehicleModel.gridrectangle44ItemList();
}
