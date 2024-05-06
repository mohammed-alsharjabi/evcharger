

class StationInfoModel {
  String? stationId;
  String? stationName;
  String? stationCity;
  String? stationStreet;
  String? stationCoast;
  String? stationOpen;


  StationInfoModel({this.stationId, this.stationName, this.stationCity,
      this.stationStreet, this.stationCoast, this.stationOpen}); //


  StationInfoModel.fromJson(Map<String, dynamic> json) {
    stationId = json['station_id'];
    stationName = json['station_name'];
    stationCity = json['station_city'];
    stationStreet = json['station_street'];
    stationCoast = json['station_coast'];
    stationOpen = json['station_open'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['station_id'] = stationId;
    data['station_name'] = stationName;
    data['station_city'] = stationCity;
    data['station_street'] = stationStreet;
    data['station_coast'] = stationCoast;
    data['station_open'] = stationOpen;
    return data;
  }
}
