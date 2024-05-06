
import '../../../core/assets/image_constant.dart';

class ConnectorModel{

  String ?id;
  String ?name;
  String ?power;
  String ?coast;
  String ?state;
  String ?icon;

  ConnectorModel({this.id, this.name, this.power, this.coast,this.state,this.icon});

 static List<ConnectorModel> conctore_list=[

   ConnectorModel(name: "CCS",power: "55 kw",coast: "(\$12/kw )",state: "متاح",icon: ImageConstant.imgCharges1stIcon),
   ConnectorModel(name: "BS 3435",power: "3 kw",coast: "(\$12/kw )",state: "محجوز",icon: ImageConstant.imgCharges2ndIcon),
   ConnectorModel(name: "CCS",power: "7 kw",coast: "(\$12/kw )",state: "محجوز",icon: ImageConstant.imgCharges1stIcon),
   ConnectorModel(name: "CCS",power: "55 kw",coast: "(\$12/kw )",state: "متاح",icon: ImageConstant.imgCharges2ndIcon),

  ];


}