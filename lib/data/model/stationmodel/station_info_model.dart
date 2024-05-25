

class StationInfoModel {
  String? id;
  String? name;
  String? address;
  String? icon;
  String? locationLat;
  String? locationLong;
  String? price;
  String? status;
  String? rate;


  StationInfoModel(this.id, this.name, this.address, this.icon,this.locationLat,
      this.locationLong, this.price, this.status, this.rate);


  StationInfoModel.fromJson(Map<String, dynamic> json) {
    id = json['station_id'];
    name = json['station_name'];
    address = json['station_address'];
    locationLat = json['location_lat'];
    locationLong = json['location_long'];
    status = json['station_status'];
    rate = json['station_rate'];
    price = json['station_price'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['station_id'] = id;
    data['station_name'] = name;
    data['station_address'] = address;
    data['location_lat'] = locationLat;
    data['location_long'] = locationLong;
    data['station_status'] = status;
    data['station_rate'] = rate;
    data['station_price'] = price;
    return data;
  }
}
