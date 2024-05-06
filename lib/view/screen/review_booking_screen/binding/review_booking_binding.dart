import '../controller/review_booking_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewBookingScreen.
///
/// This class ensures that the ReviewBookingController is created when the
/// ReviewBookingScreen is first loaded.
class ReviewBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewBookingController());
  }
}
