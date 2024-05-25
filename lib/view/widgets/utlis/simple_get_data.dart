import 'package:flutter/material.dart';
import 'package:vision1/core/theme/color.dart';


class SimpleGetDataItem extends StatelessWidget {
   SimpleGetDataItem({super.key,this.title,this.name});
  String?title;
  String?name;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const  EdgeInsets.symmetric(vertical: 10,horizontal: 16),
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(title!??"name",style:const TextStyle(color: AppColor.gray3,fontSize: 13,),),
          ),


          Padding(
            padding: const EdgeInsets.all(0),
            child: Text(name!??"item name",style:const TextStyle(color: AppColor.black,fontWeight: FontWeight.bold,fontSize: 15,),),
          ),

         const  Divider(color: AppColor.gray8,height: 1),

        ],
      ),

    );
  }
}




class TermsItem extends StatelessWidget {
  TermsItem({super.key,this.title,this.description});
  String?title;
  String?description;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const  EdgeInsets.symmetric(vertical: 10,horizontal: 16),
     color: AppColor.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(title!??"item name",style:const TextStyle(color: AppColor.black,fontWeight: FontWeight.bold,fontSize: 15,),),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(description!??"name",style:const TextStyle(color: AppColor.gray3,fontSize: 15,),),
          ),
        ],
      ),

    );
  }
}

