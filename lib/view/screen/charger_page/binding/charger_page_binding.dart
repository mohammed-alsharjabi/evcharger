import '../controller/charger_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChargingDetailsScreen.
///
/// This class ensures that the ChargingDetailsController is created when the
/// ChargingDetailsScreen is first loaded.
class ChargingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChargerPageController());
  }
}
