
import 'package:vision1/data/model/booking_model.dart';
import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class StationBookingData {
  Crud crud;
  StationBookingData(this.crud);



  getStationBookedData(String stationId) async {
    var response =
    await crud.postData(AppLink.bookStationBookedView, {"station_id": stationId});
    return response.fold((l) => l, (r) => r);
  }


  getMyBookingData(String userId) async {
    var response =
    await crud.postData(AppLink.bookMyBookingView, {"user_id": userId});
    return response.fold((l) => l, (r) => r);
  }
  addData( BookModel  bookModel) async {
    var response = await crud.postData(AppLink.stationAdd,bookModel.toJson() );
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String bookId) async {
    var response =
    await crud.postData(AppLink.stationDelete, {"book_id": bookId});
    return response.fold((l) => l, (r) => r);
  }


  editeData(String stationId) async {
    var response =
    await crud.postData(AppLink.stationEdit, {"station_id": stationId});
    return response.fold((l) => l, (r) => r);
  }




}
