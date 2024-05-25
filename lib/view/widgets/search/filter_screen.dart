import 'package:flutter/material.dart';
import 'package:vision1/core/theme/color.dart';

import '../../../data/model/stationmodel/conctore_model.dart';
import '../station/conctore_item.dart';
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool f=false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("فلترت البحث"),),
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding:const  EdgeInsets.all(9),
        child: ListView(
          shrinkWrap: true,
          physics:const  BouncingScrollPhysics(),
          children: [
            _title("حسب الموصل"),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) => gggg(index),),
            _title("حسب المسافة"),
            _title("حسب السرعة"),
            _title("حسب السعر"),
          ],
        ),
      ),

    );
  }

  gggg(int index){
    return InkWell(
        onTap: (){
          setState(() {

           f= f==true?false:true;

          });
        },
        child: AnimatedContainer(
          width: 110,
          margin:const  EdgeInsets.symmetric(horizontal: 10,vertical: 30),
          decoration: BoxDecoration(
            border: Border.all(color:f? AppColor.green1:AppColor.transparent, width: 3)
          ),
            duration:const  Duration(seconds: 2),
            child: ConnctorItem(conctoreModel:ConnectorModel.conctore_list[0])
        )
    );

  }
  
  _title(String  txt){

    return Padding(padding:const  EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      child: Text(txt,
        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColor.black, overflow: TextOverflow.ellipsis),),
    );
  }

  _checkBoxItem(String txt,bool val)
  {
    return ListTile(
      title: Text(txt,
        style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: AppColor.black, overflow: TextOverflow.ellipsis),),
    leading: Checkbox(value: val,onChanged: (bool?b){
     setState(() {
       val=b!;
     });
    }),
    );
  }

  _radioItem(String txt,bool val)
  {
    return ListTile(
      title: Text(txt,
        style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: AppColor.black, overflow: TextOverflow.ellipsis),),
      leading: Radio(value: val,onChanged: (bool?b){
        setState(() {
          val=b!;
        });
      },groupValue: val,),
    );
  }

}
