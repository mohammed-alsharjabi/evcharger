import 'package:get/get.dart';
import 'package:vision1/core/class/statusrequest.dart';
import 'package:vision1/data/datasource/remote/my_booking_data.dart';
import '../core/assets/image_constant.dart';
import '../core/functions/alertexitapp.dart';
import '../core/functions/handingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/model/booking_model.dart';

abstract class MyBookingController extends GetxController {
  addBooking(BookModel bookModel);
  getMyBooking();
  getMyHistoryBooking();
  getVehicleBookDetail();

  cancelBooked(String bookId);
}

class MyBookingControllerImp extends MyBookingController {
  StatusRequest statusRequest = StatusRequest.none;
  MyBookingData myBookingData = MyBookingData(Get.find());
  MyServices myServices = Get.find();
  List<BookModel> myBookList = [];

  @override
  addBooking(BookModel bookModel) async {
    statusRequest = StatusRequest.loading;
    var response = await myBookingData.addData(bookModel);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        alertMessageApp(
            title: "تم الاضافة بنجاح",
            subtitle: "نجحت عملية الاضافة ",
            icon: ImageConstant.imgDetails,
            onConfirm: () {
              Get.back();
            });
      } else {
        alertMessageApp(
            title: "حدث خطأ ",
            subtitle: " لم تتم الاضافة ",
            icon: ImageConstant.imgFavorite,
            onConfirm: () {
              Get.back();
            });
      }
    }
  }

  @override
  cancelBooked(bookId) async {
    statusRequest = StatusRequest.loading;
    var response = await myBookingData.cancelBookingData(bookId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        alertMessageApp(
            title: "تم الالغاء",
            subtitle: "التأكيد على الالغاء من المفضلة",
            icon: ImageConstant.imgDetails,
            onConfirm: () {
              Get.back();
            });
      } else {
        alertMessageApp(
            title: "حدث خطأ ",
            subtitle: " لم تتم عملية الالغاء حاول او تواصل يالمحطة ",
            icon: ImageConstant.imgFavorite,
            onConfirm: () {
              Get.back();
            });
      }
    }
  }

  @override
  getMyBooking()async{

    String? userId = myServices.sharedPreferences.getString("user_id");
    statusRequest = StatusRequest.loading;
    var response = await myBookingData.getMyBookingData(userId!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List data = response['data'];
        myBookList.addAll(data.map((e) => BookModel.fromJson(e)));
        if (myBookList.isEmpty) {
          statusRequest = StatusRequest.failure;
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

  }

  @override
  getMyHistoryBooking() {

  }

  @override
  getVehicleBookDetail() {
    // TODO: implement getVehicleBookDetail
    throw UnimplementedError();
  }
}
