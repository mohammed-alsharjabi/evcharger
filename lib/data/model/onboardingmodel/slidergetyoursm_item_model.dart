import 'package:get/get.dart';

/// This class is used in the [slidergetyoursm_item_widget] screen.

class SlidergetyoursmItemModel {
  Rx<String>? id = Rx("");

  String? image;
  String? title;
  String? subTitle;
  SlidergetyoursmItemModel(this.image,this.title,this.subTitle);
}
