
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/theme/color.dart';

import '../../core/text_theme_helper.dart';
import '../../data/datasource/statics/slelctordata/selector_data_type.dart';
import '../../data/datasource/statics/slelctordata/static_selector_data.dart';
import '../../data/datasource/statics/slelctordata/select_model.dart';


class SelectInputItemController extends GetxController {


  //static data
  List<SelectModel> brandDataList = StaticSelectorData.getBrandNameData();
  List<SelectModel> chargePortList = StaticSelectorData.getChargePort();
  List<SelectModel> modelNameList = StaticSelectorData.getModelNameData();
  List<SelectModel> chargeListTypeList = StaticSelectorData.getChargeType();
  List<SelectModel> vehicleWheelerList = StaticSelectorData.getVehicleWheeler();

   final SelectorDataType statusSelector=SelectorDataType.none;
    TextStyle theme= TextThemeHelper.bodyLargeGray600;
    TextStyle theme2=const TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );



  TextEditingController searchController = TextEditingController();
  String currentSelect = "";
  String currentModel = "";
  String currentBrand = "";
  String currentChargePort = "";
  String currentChargeType = "";
  String currentWheeler = "";
  String currentFullTime = "";


  //get list data from any   type
  List<dynamic>listSelector(SelectorDataType selectorDataType){
    List<dynamic> list=brandDataList;

    if(SelectorDataType.brand==selectorDataType) {
      list =brandDataList;
      update();
    }
    else if(SelectorDataType.chargePort==selectorDataType) {
      list =chargePortList;
      update();
    }
    else  if(SelectorDataType.model==selectorDataType) {
      list =modelNameList;
      update();
    }

    else  if(SelectorDataType.chargeType==selectorDataType) {
      list =chargeListTypeList;
      update();
    }
    else  if(SelectorDataType.countWheeler==selectorDataType) {
      list =vehicleWheelerList;
      update();
    }
    return list;

  }


String getCurrentSelect(SelectorDataType selectorDataType)
{



  currentSelect="selector";

  if(SelectorDataType.brand==selectorDataType&&currentBrand!="") {
    currentSelect=currentBrand;
    theme=theme2;

  }
  else if(SelectorDataType.brand==selectorDataType&&currentBrand=="") {
    currentSelect="ماركة السيارة";
  }

   if(SelectorDataType.chargePort==selectorDataType&&currentChargePort!="") {
    currentSelect=currentChargePort;
    theme=theme2;
  }
   else if(SelectorDataType.chargePort==selectorDataType&&currentChargePort==""){
     currentSelect="نوع الموصبل";

   }

   if(SelectorDataType.model==selectorDataType&&currentModel!="") {
currentSelect=currentModel;
theme=theme2;
  }
   else  if(SelectorDataType.model==selectorDataType&&currentModel==""){
     currentSelect="موديل السيارة";

   }

   if(SelectorDataType.chargeType==selectorDataType&&currentChargeType!="") {
  currentSelect=currentChargeType;
  theme=theme2;
  }
   else if(SelectorDataType.chargeType==selectorDataType&&currentChargeType==""){
     currentSelect="نوعية التوصيل";

   }

   if(SelectorDataType.countWheeler==selectorDataType&&currentWheeler!="") {
    currentSelect=currentWheeler;
    theme=theme2;

  }
   else if(SelectorDataType.countWheeler==selectorDataType&&currentWheeler=="") {
     currentSelect="عدد  المداخل";
   }
  update();
  return currentSelect;
}



  void setData(SelectorDataType selectorDataType,String item)
  {




    if(SelectorDataType.brand==selectorDataType) {
     currentBrand=item;
    }

    else if(SelectorDataType.chargePort==selectorDataType) {
      currentChargePort=item;
    }

    else if(SelectorDataType.model==selectorDataType) {
      currentModel=item;

    }

    else if(SelectorDataType.chargeType==selectorDataType) {
      currentChargeType=item;

    }

    else if(SelectorDataType.countWheeler==selectorDataType) {
      currentWheeler=item;

    }

    update();

  }

  void setBrand(String? brandName) {
    currentSelect = brandName!;
    update();
  }


}
