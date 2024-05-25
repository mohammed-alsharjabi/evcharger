import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';
import 'package:vision1/data/model/stationmodel/station_info_model.dart';
import 'package:vision1/view/screen/station_screen.dart';

import '../../../assets.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme/color.dart';
import '../../../core/theme_helper.dart';
import '../utlis/custom_elevated_button.dart';

class StationHorizontal extends StatelessWidget {
  StationHorizontal({super.key,required this.stationData});
StationInfoModel stationData;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
          width: MediaQuery.of(context).size.width/1.1,
          padding: const EdgeInsets.all(1),
          margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: AppColor.shadow,
                offset: Offset(1, 1),
                blurStyle: BlurStyle.solid,
                blurRadius: 11,
                spreadRadius: -5,
              )
            ],
          ),
          child: Row(
            children: [

              //station image
             Expanded(
               flex: 2,child:  SizedBox(

                   height: double.infinity,

                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CustomImageView(
                       fit: BoxFit.cover,
                       imagePath:stationData.icon,
                       radius: BorderRadius.circular(10),),
                   ),

                 ),
               ),


              Expanded(
                flex: 3,
                child: Column(
                  children: [
                      Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                      child: Text(
                        stationData.name!,
                        style: TextStyle(fontSize: 12,color: AppColor.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                      Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                      child: Text(
                        stationData.address!,
                        style: TextStyle(fontSize: 10, color: Colors.black87,fontWeight: FontWeight.normal),
                      ),
                    ),


                     Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16),
                      child:  Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.star,color: Colors.amber,size: 18,),
                          Text(stationData.rate!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),

                        ],
                      ),
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: (){
                              Get.to(StationScreen(stationInfoModel: stationData,));
                            },
                            child: Container(
                              width:80,
                              height: 30,
                              decoration: const BoxDecoration(
                                  color: AppColor.gray4,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                  )
                              ),
                              child:const Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                child: Text(
                                  "عرض",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 11),),
                              ),
                            ),
                          ),

                          InkWell(
                            onTap: (){
                              Get.to(StationScreen(stationInfoModel: stationData,));
                            },
                            child: Container(
                              width:80,
                              height: 30,
                              margin: const EdgeInsets.only(left: 3),
                              decoration: const BoxDecoration(
                                  color: AppColor.green1,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                  )
                              ),
                              child:const Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                child: Text(
                                  "احجز الان",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 11),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              )


            ],
          ),
    );
  }
}



class StationVertical extends StatelessWidget {
  const StationVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width/1.8,
      padding: const EdgeInsets.all(1),
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: AppColor.shadow,
            offset: Offset(1, 1),
            blurStyle: BlurStyle.solid,
            blurRadius: 5,
            spreadRadius: -5,
          )
        ],
      ),
      child:
        Stack(
          fit: StackFit.expand,
          children: [
            const Align(
              alignment: Alignment.bottomLeft,
              child:
              Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                      child: Text(
                        "محطة  خالد احمد علي",
                        style: TextStyle(fontSize: 12,color: AppColor.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                      child: Text(
                        " صنعاء حدة مقابل سوق السلام",
                        style: TextStyle(fontSize: 10, color: Colors.black87,fontWeight: FontWeight.normal),
                      ),
                    ),


                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16),
                      child:  Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.star,color: Colors.amber,size: 18,),
                          Text("4.6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),

                        ],
                      ),
                    ),




                  ],
                ),

            ),

            Align(alignment: Alignment.topRight,
            child:   SizedBox(
              height: 100,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomImageView(
                  fit: BoxFit.cover,
                  imagePath: Assets.imagesFavouriteStation1st,
                  radius: BorderRadius.circular(10),),
              ),

            ),
            ),
          ],
        )
    );
  }
}





class StationHomeCard extends StatelessWidget {
   StationHomeCard({super.key,required this.stationData});

  StationInfoModel stationData;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 290,
      height: 190,
      child: Stack(
        fit: StackFit.passthrough,

        alignment: Alignment.center,
        children: [
        Container(
        height: 200,
        width: MediaQuery.of(context).size.width/1.8,
        padding: const EdgeInsets.all(1),
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              color: AppColor.shadow,
              offset: Offset(1, 1),
              blurStyle: BlurStyle.solid,
              blurRadius: 7,
              spreadRadius: -5,
            )
          ],
        ),
        ),

           Align(
            alignment: Alignment.topLeft,
            child:
            SizedBox(
              width: 140,
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 24,top: 10),
                    child: Text(
                      textAlign: TextAlign.right,
                      stationData.name!,
                      style: TextStyle(fontSize: 11,color: AppColor.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 20,top: 1),
                    child: Text(
                     stationData.address!,
                      style: TextStyle(fontSize: 9, color: Colors.black,fontWeight: FontWeight.normal),
                    ),
                  ),



Padding(padding: EdgeInsets.only(left: 20,top: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5),
        child:  Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(stationData.rate!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
            Icon(Icons.star,color: AppColor.green3,size: 18,),
          ],
        ),
      ),

      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5),
        child:  Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(stationData.price!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
            Icon(CupertinoIcons.arrow_swap,color: AppColor.green3,size: 18,),
          ],
        ),
      ),

    ],
  )


)


                ],
              ),
            ),

          ),

          Align(alignment: Alignment.topRight,
            child:   SizedBox(
              height: 130,
              width: 130,
              child: Padding(
                padding: const EdgeInsets.only(right: 20,top: 15),
                child: CustomImageView(
                  fit: BoxFit.cover,
                  imagePath:stationData.icon,
                  radius: BorderRadius.circular(10),),
              ),

            ),
          ),

          //btn
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(onTap: (){
Get.to(StationScreen(stationInfoModel: stationData,));

            }, child:
            Container(
              width: double.infinity,
              height: 35,
              margin: const EdgeInsets.only(right: 25,left: 25,bottom: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColor.green3,width: 1.5, )
              ),
              child:const Text(
                textAlign: TextAlign.center,
                "احجز الان",
                style: TextStyle(fontSize: 14,color: AppColor.green3, fontWeight: FontWeight.bold),
              ),
            )

            ),
          )
        ],
      ),
    );
  }
}
