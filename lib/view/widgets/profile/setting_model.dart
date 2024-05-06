import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/view/widgets/profile/setting_data.dart';

class SettingModel {
  String name;
  String icon;
  VoidCallback onTap;
  SettingModel({required this.name, required this.icon, required this.onTap});

  static List<SettingModel> settingListItem = List.generate(
      SettingData.names.length,
          (index) => SettingModel(
          name: SettingData.names[index],
          icon: SettingData.image[index],
          onTap: () {
            Get.toNamed(SettingData.action[index]);
          }));
}
