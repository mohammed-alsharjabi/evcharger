
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vision1/view/widgets/utlis/customappbar.dart';

import '../../data/datasource/statics/slelctordata/selector_data_type.dart';
import '../../data/datasource/statics/slelctordata/static_selector_data.dart';
import '../../data/datasource/statics/slelctordata/select_model.dart';


class SelectInputItemController extends GetxController {


  //static data
  List<SelectModel> selectBrandSearchModelObj = StaticSelectorData
      .getBrandNameData();
  List<SelectModel> brandDataList = StaticSelectorData.getBrandNameData();
  List<SelectModel> connectorNameList = StaticSelectorData
      .getConnectorNameData();
  List<SelectModel> modelNameList = StaticSelectorData.getModelNameData();

   final SelectorDataType statusSelector=SelectorDataType.none;

  SelectInputItemController();



  TextEditingController searchController = TextEditingController();
  String currentSelect = "";
  String currentModel = "";
  String currentConnector = "";


  //get list data from any   type
  List<dynamic>listSelector(SelectorDataType selectorDataType){
    List<dynamic> list=brandDataList;

    if(SelectorDataType.brand==selectorDataType) {
      list =brandDataList;
      update();
    }
    else if(SelectorDataType.connector==selectorDataType) {
      list =connectorNameList;
      update();
    }
    else  if(SelectorDataType.model==selectorDataType) {
      list =modelNameList;
      update();
    }

    return list;

  }


String getCurrentSelect(SelectorDataType selectorDataType)
{


  update();
  currentSelect="selector";

  if(SelectorDataType.brand==selectorDataType) {
    currentSelect="ماركة السيارة";
  }

  else if(SelectorDataType.connector==selectorDataType) {
    currentSelect="نوع الموصبل";
  }

  else if(SelectorDataType.model==selectorDataType) {
    currentSelect="موديل السيارة";

  }
  update();
  return currentSelect;
}

  void setBrand(String? brandName) {
    currentSelect = brandName!;
    update();
  }


}
