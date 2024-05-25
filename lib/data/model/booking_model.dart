
class BookModel{

  String? stationId ;
  String? bookId ;
  String? userId ;
  String? connectPort ;
  String? chargeType ;
  String? vehicleModel ;
  String? time ;
  String? date ;
  String? wheeler ;
  String? bookAmount ;


  BookModel(this.stationId, this.userId, this.connectPort, this.chargeType,
      this.vehicleModel, this.time, this.date, this.wheeler, this.bookAmount);

  BookModel.fromJson( Map<String,dynamic>map )
  {

    stationId=map["station_id"];
    userId=map["user_id"];
    bookId=map["book_id"];
    vehicleModel=map["vehicle_model"];
    connectPort=map["connect_port"];
    chargeType=map["charge_type"];
    wheeler=map["wheeler"];
    date=map["date"];
    time=map["time"];
    bookAmount=map["book_amount"];


  }

Map<String,dynamic> toJson(){
    Map<String,dynamic>data={};


    data["station_id"]=stationId;
    data["user_id"]=  userId;
    data["vehicle_model"]=vehicleModel;
    data["connect_port"]=connectPort;
    data["charge_type"]=chargeType;
    data["wheeler"]=wheeler;
    data["date"]=date;
    data["time"]=time;
    data["book_amount"]=bookAmount;


    return  data;
}


}