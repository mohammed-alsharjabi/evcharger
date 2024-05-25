import 'package:vision1/data/model/booking_model.dart';
import '../../../core/class/crud.dart';
import '../../../linkapi.dart';


class MyBookingData {
  Crud crud;
  MyBookingData(this.crud);

  getMyBookingData(String userKey) async {
    var response =
    await crud.postData(AppLink.bookMyBookingView, {"user_key": userKey});
    return response.fold((l) => l, (r) => r);
  }

  getHistory(String userKey) async {
    var response =
    await crud.postData(AppLink.bookStationHistoryView, {"user_key": userKey});
    return response.fold((l) => l, (r) => r);
  }

  addData( BookModel  bookModel) async {
    var response = await crud.postData(AppLink.stationAdd,bookModel.toJson() );
    return response.fold((l) => l, (r) => r);
  }

  cancelBookingData(String bookId) async {
    var response =
    await crud.postData(AppLink.stationDelete, {"book_id": bookId});
    return response.fold((l) => l, (r) => r);
  }






}
