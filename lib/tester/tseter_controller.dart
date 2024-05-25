

import 'dart:convert';

import 'package:get/get.dart';
import 'package:vision1/tester/tester_data.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handingdatacontroller.dart';
import '../linkapi.dart';
import 'package:http/http.dart' as http;
class TesterController extends GetxController
{
  List title=[];

  late StatusRequest statusRequest;
  TesterData testerData=TesterData(Get.find());


  getDataByGet()async{
    List<dynamic>postDataList=[];
    statusRequest = StatusRequest.loading;

    var response=await http.get(Uri.parse(AppLink.post));
    statusRequest=handlingData(response);
    // print("=========================================  ${response.body}");
var jsonMap=jsonDecode(response.body);
title.addAll(jsonMap);
    update();
  }


  @override
  void onInit() {
    getDataByGet();
  }

  getDataByPost() async {
      List<dynamic>postDataList=[];
    statusRequest = StatusRequest.loading;
    // var response = await testerData.getPost();
    var response = await http.post(Uri.parse(AppLink.post),


      body: {}

    );

    print("===============>    ${response.body}");
    statusRequest = handlingData(response);
    var  responsebody = jsonDecode(response.body);
      print("===============>    ${responsebody[0]["id"]}");
    title.addAll(responsebody);

update();

    // print(postDataList);

    // print(response);


  }

}