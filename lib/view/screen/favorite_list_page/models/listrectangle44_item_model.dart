import 'package:get/get.dart';

/// This class is used in the [listrectangle44_item_widget] screen.

class Listrectangle44ItemModel {
  Rx<String> superchargerstaTxt = Rx("Supercharger station");

  Rx<String>? id = Rx("");


  String? image;
  String? title;
  String? address;
  String? distance;
  String? noOfRating;
  bool? isFavorite;
  Listrectangle44ItemModel(this.image,this.title,this.address,this.distance,this.noOfRating,this.isFavorite);
}
