

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../../core/class/crud.dart';
import '../../../core/class/statusrequest.dart';
import '../../../linkapi.dart';
import '../../model/stationmodel/station_info_model.dart';

class StationData {
  Crud crud;
  StationData(this.crud);
  getData(String stationId) async {
    var response =
        await crud.postData(AppLink.stationView, {"station_id": stationId});
    return response.fold((l) => l, (r) => r);
  }

  addData( StationInfoModel  stationInfoModel) async {
    var response = await crud.postData(AppLink.stationAdd,stationInfoModel.toJson() );
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String stationId) async {
    var response =
        await crud.postData(AppLink.stationDelete, {"station_id": stationId});
    return response.fold((l) => l, (r) => r);
  }


  editeData(String stationId) async {
    var response =
    await crud.postData(AppLink.stationEdit, {"station_id": stationId});
    return response.fold((l) => l, (r) => r);
  }


  // Future<Either<StatusRequest, Map>> addRequestWithImageOne(
  //     url, data, File? image,
  //     [String? namerequest]) async {
  //   namerequest ??= "files";
  //
  //   var uri = Uri.parse(url);
  //   var request = http.MultipartRequest("POST", uri);
  //   request.headers.addAll(_myheaders);
  //
  //   if (image != null) {
  //     var length = await image.length();
  //     var stream = http.ByteStream(image.openRead());
  //     stream.cast();
  //     var multipartFile = http.MultipartFile(namerequest, stream, length,
  //         filename: basename(image.path));
  //     request.files.add(multipartFile);
  //   }
  //
  //   // add Data to request
  //   data.forEach((key, value) {
  //     request.fields[key] = value;
  //   });
  //   // add Data to request
  //   // Send Request
  //   var myrequest = await request.send();
  //   // For get Response Body
  //   var response = await http.Response.fromStream(myrequest);
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //     print(response.body);
  //     Map responsebody = jsonDecode(response.body);
  //     return Right(responsebody);
  //   } else {
  //     return const Left(StatusRequest.serverfailure);
  //   }
  // }


}
