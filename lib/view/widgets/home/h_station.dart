import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';

import '../../../assets.dart';
import '../../../core/theme/color.dart';

class StationHorizental extends StatelessWidget {
  const StationHorizental({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: 150,
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
             Expanded(
               flex: 2,
               child: SizedBox(
                 width: 100,
                 child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.asset(
                          fit: BoxFit.fill,
                          Assets.imagesFavouriteStation1st,
               
                        )),
               ),
             ),
const SizedBox(width: 10,),
              
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: Text(
                        "محطة  خالد احمد علي",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const  Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                      child: Text(
                        " صنعاء حدة مقابل سوق السلام",
                        style: TextStyle(fontSize: 12, color: Colors.black87,fontWeight: FontWeight.normal),
                      ),
                    ),


                    const Padding(
                      padding:  EdgeInsets.all(0),
                      child:   Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("4.5",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
                          Icon(Icons.star,color: Colors.amberAccent,)
                        ],
                      ),
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: (){
                              Get.toNamed(AppRoutes.stationScreen);
                            },
                            child: Container(
                              width:100,
                              decoration: const BoxDecoration(
                                  color: AppColor.gray4,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  )
                              ),
                              child:const Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                child: Text(
                                  "عرض الصفحة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87,fontWeight: FontWeight.normal,fontSize: 15),),
                              ),
                            ),
                          ),

                          InkWell(
                            onTap: (){
                              Get.toNamed(AppRoutes.stationScreen);
                            },
                            child: Container(
                              width:110,
                              margin: const EdgeInsets.only(left: 3),
                              decoration: const BoxDecoration(
                                  color: AppColor.green1,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  )
                              ),
                              child:const Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                child: Text(
                                  "احجز الان",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),),
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
          )),
    );
  }
}
