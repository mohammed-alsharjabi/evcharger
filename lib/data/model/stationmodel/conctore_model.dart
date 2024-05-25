
import '../../../core/assets/image_constant.dart';

class ConnectorModel{

  String ?id;
  String ?name;
  String ?power;
  String ?coast;
  String ?state;
  String ?icon;

  ConnectorModel({this.id, this.name, this.power, this.coast,this.state,this.icon});

  ConnectorModel.fromJson(Map<String, dynamic> json)
  {
    id = json['connector_id'];
    name = json['connector_name'];
    power = json['connector_power'];
    coast = json['connector_coast'];
    state = json['connector_state'];
    icon = json['connector_icon'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['connector_id'] = id;
    data['connector_name'] = name;
    data['connector_power'] = power;
    data['connector_coast'] = coast;
    data['connector_state'] = state;
    data['connector_icon'] = icon;

 return  data;
  }

 static List<ConnectorModel> conctore_list=[

   ConnectorModel(name: "CCS",power: "55 kw",coast: "(\$12/kw )",state: "متاح",icon: ImageConstant.imgCharges1stIcon),
   ConnectorModel(name: "BS 3435",power: "3 kw",coast: "(\$12/kw )",state: "محجوز",icon: ImageConstant.imgCharges2ndIcon),
   ConnectorModel(name: "CCS",power: "7 kw",coast: "(\$12/kw )",state: "محجوز",icon: ImageConstant.imgCharges1stIcon),
   ConnectorModel(name: "CCS",power: "55 kw",coast: "(\$12/kw )",state: "متاح",icon: ImageConstant.imgCharges2ndIcon),

  ];




}