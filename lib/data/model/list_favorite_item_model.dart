import 'package:get/get.dart';

class ListFavoriteItemModel {
  Rx<String> superchargerstaTxt = Rx("Supercharger station");

  String? id;
  String? image;
  String? title;
  String? address;
  String? distance;
  String? noOfRating;
  bool? isFavorite;
  ListFavoriteItemModel(this.id, this.image, this.title, this.address,
      this.distance, this.noOfRating, this.isFavorite);

  ListFavoriteItemModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    image = json["favorite_image"];
    title = json["favorite_title"];
    address = json["favorite_address"];
    distance = json["favorite_distance"];
    noOfRating = json["favorite_noOfRating"];
    isFavorite = json["favorite_isFavorite"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["favorite_image"] = image;
    data["favorite_title"] = title;
    data["favorite_address"] = address;
    data["favorite_distance"] = distance;
    data["favorite_noOfRating"] = noOfRating;
    data["favorite_isFavorite"] = isFavorite;
    return data;
  }
}
