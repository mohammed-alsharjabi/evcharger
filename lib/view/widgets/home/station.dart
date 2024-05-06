import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/theme/color.dart';

import '../../../app_rout.dart';
import '../../../assets.dart';
import '../../screen/review_booking_screen/review_booking_screen.dart';

class StationCard extends StatelessWidget {
  const StationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Container(
        width: 180,
        height: 250,
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: AppColor.gray,
              offset: Offset(-2,2 ),
              blurStyle: BlurStyle.solid,
              blurRadius: 11,
              spreadRadius: -5,
            )
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 140,
              width: double.infinity,
              child: ClipRRect(
                  borderRadius:const  BorderRadius.only(topRight: Radius.circular(17),topLeft: Radius.circular(20)),
                  child: Image.asset(Assets.imagesFavouriteStation1st,fit: BoxFit.cover,)),
            ),
          const  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              child: Text(
                "محطة  خالد احمد علي",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
              padding:  EdgeInsets.only(left: 14),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("4.5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
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
                      width:80,
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
                          "الموقع",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black87,fontWeight: FontWeight.normal,fontSize: 15),),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Get.to(ReviewBookingScreen());
                    },
                    child: Container(
                      width:70,
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
                          "حجز",
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

    );
  }
}
