

import 'package:vision1/data/datasource/statics/slelctordata/select_model.dart';

class StaticSelectorData{
  static List<SelectModel> getBrandNameData(){
    return [
      SelectModel(itemName: "Always"),
      SelectModel(itemName: "Aptera"),
      SelectModel(itemName: "Arcimoto"),
      SelectModel(itemName: "Ather energy"),
      SelectModel(itemName: "Audi"),
      SelectModel(itemName: "Autovaz"),
      SelectModel(itemName: "Baic"),
      SelectModel(itemName: "Bjev"),
      SelectModel(itemName: "BMW"),
      SelectModel(itemName: "Buckle"),
      SelectModel(itemName: "Cheetah"),
      SelectModel(itemName: "Chrysler"),
    ];
  }

  static List<SelectModel> getConnectorNameData(){
    return [
      SelectModel(itemName: "CSS"),
      SelectModel(itemName: "RX32"),
      SelectModel(itemName: "CSD"),
      SelectModel(itemName: "BJ5"),
      SelectModel(itemName: "GH67"),
      SelectModel(itemName: "TYPE1"),
      SelectModel(itemName: "TYPE2"),
      SelectModel(itemName: "LEVEL2"),
    ];
  }

  static List<SelectModel> getModelNameData(){
    return [
      SelectModel(itemName: "2018"),
      SelectModel(itemName: "2019"),
      SelectModel(itemName: "2020"),
      SelectModel(itemName: "2021"),
      SelectModel(itemName: "2022"),
      SelectModel(itemName: "2023"),
      SelectModel(itemName: "2024"),
    ];
  }




}