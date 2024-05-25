import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/theme_helper.dart';
import 'package:vision1/data/model/booking_model.dart';
import 'package:vision1/view/widgets/booking/bottom_sheet_amount.dart';
import 'package:vision1/view/widgets/station/conctore_item.dart';
import 'package:vision1/view/widgets/utlis/custom_dropdown_button.dart';
import '../../core/app_decoration.dart';
import '../../core/theme/color.dart';
import '../../data/datasource/statics/slelctordata/select_model.dart';
import '../../data/datasource/statics/slelctordata/static_selector_data.dart';
import '../../data/model/stationmodel/conctore_model.dart';

class StationBookedController extends GetxController
{


  List<SelectModel> chargePortList = StaticSelectorData.getChargePort();
  List<SelectModel> modelNameList = StaticSelectorData.getModelNameData();
  List<SelectModel> chargeListTypeList = StaticSelectorData.getChargeType();
  List<SelectModel> vehicleWheelerList = StaticSelectorData.getVehicleWheeler();

late BookModel bookModel;
  String? stationId ;
  String? bookId ;
  String? userId ;
  String? connectPort ;
  String? chargeType ;
  String? vehicleModel ;
  String? time ;
  String? date ;
  String? wheeler ;
  double? bookAmount ;

  bool checkData(){
    bool  f=false;
    if(connectPort!=""&&chargeType!=""&&time!=""
        &&date!=""&&wheeler!=""&&bookAmount!="") {
      f=true;
    }
    return f;
  }



  setVehicleType() {
    return Get.bottomSheet(
        SingleChildScrollView(
          child: Container(
            padding: getPadding(all: 25),
            height: 220,
            decoration: AppDecoration.outline3.copyWith(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30), topLeft: Radius.circular(30))),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: vehicleWheelerList.length-1,
              padding: getPadding(all: 3),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>  ConnctorItem(
                  onTap: (){
                    connectPort=ConnectorModel.conctore_list[index].name;
                    update();

                    Get.back();
                  },
                  conctoreModel: ConnectorModel.conctore_list[index],

                ),

            ),
          ),
        ));
  }

  setWheeler() {
    return Get.bottomSheet(
      isScrollControlled: true,
      SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 120,
          alignment: Alignment.center,
          decoration: AppDecoration.outline3.copyWith(
              color: AppColor.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: vehicleWheelerList.length,
              padding: getPadding(all: 3),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                wheeler=vehicleWheelerList[index].itemName;
                  Get.back();
                  update();
                },
                child: Container(
                  padding: getPadding(right: 15, left: 15, top: 3, bottom: 3),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColor.gray4,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                  child: Padding(
                      padding: getPadding(all: 3),
                      child: Text(vehicleWheelerList[index].itemName.toString(),
                          style:const  TextStyle(
                              fontSize: 16,
                              color: AppColor.black,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis))),
                ),
              ),
            ),
          ),
        ),
      ),
    );

  }

  setDate() async {
    DateTime? dateTime = await showDatePicker(
      context: Get.context!,
      initialEntryMode: DatePickerEntryMode.calendar,
      firstDate: DateTime(1970),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    if (dateTime != null) {
      date = dateTime.toString().split(" ")[0];
    } else {
      date = DateTime.now().toString();
    }

    update();
  }

  void setTypeCharge(value) {
    chargeType = value;
  }


  void setAmount(double value) {
    bookAmount = value;
  }

  getAmountWidget() {

    Get.bottomSheet(
        BottomSheetAmount()
    );
  }

  setChargeType() {
    List<String> list = [];
    for (var i in chargeListTypeList) {
      list.add(i.itemName!);
    }
    return Padding(
        padding: getPadding(left: 0, right: 0, top: 20, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 0),
              child: Text("نوع الكهرباء",
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            CustomDropDownButton(
              items: list,
              onChanged: (value) {
                setTypeCharge(value);
update();
              },
            )
          ],
        ));
  }

  setTime() async {
    // TimePickerDialog a=TimePickerDialog(initialTime: TimeOfDay.now(),);
    TimeOfDay? timer = await showTimePicker(
      context: Get.context!,
      initialTime: TimeOfDay.now(),
    );

    if (timer != null) {
      time = timer.toString().split(" )(")[0];
      print(time);
    } else {
      time = DateTime.now().toString();
    }
    update();
  }






}