import '../controller/my_vehicle_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyVehicleScreen.
///
/// This class ensures that the MyVehicleController is created when the
/// MyVehicleScreen is first loaded.
class MyVehicleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyVehicleController());
  }
}
