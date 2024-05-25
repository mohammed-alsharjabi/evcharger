import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';
import 'package:vision1/core/assets/image_constant.dart';
import 'package:vision1/core/custom_image_view.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/core/theme_helper.dart';

import '../../../assets.dart';


class StationCardWidget extends StatelessWidget {
  const StationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
       return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      margin: getMargin(right: 16,bottom: 20),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 4,
            ),
          ]),
      child: SizedBox(
        width: MediaQuery.of(context).size.width/1.2,
        child: Column(
          children: [
            ListTile(
              leading:
              SizedBox(
                width: 90,
                height: 90,

                child: CustomImageView(
                  fit: BoxFit.cover,

                  imagePath: Assets.imagesFavouriteStation1st,
                  radius: BorderRadius.circular(10),),

              ),
              title: const  Text(
               "محطة التكامل للشحن السريع",
                style: TextStyle(
                    fontSize: 10,
                    color: AppColor.black,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("الرياض,الخالدية,حي النسيم",style: TextStyle(fontSize: 11,color: Colors.grey),),

              trailing:const
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.amber,),
                  Text("4.6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),

                ],
              ),


            ),

            const  Padding(padding:  EdgeInsets.symmetric(horizontal: 16),
              child:
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "الموصلات",
                        overflow: TextOverflow.ellipsis,
                        style:  TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "السرعة",
                        overflow: TextOverflow.ellipsis,
                        style:  TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "المسافة",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:  TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "06",
                        overflow: TextOverflow.ellipsis,
                        style:  TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "17km/h",
                        overflow: TextOverflow.ellipsis,
                        style:  TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "3.6km",
                        overflow: TextOverflow.ellipsis,
                        style:  TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )
            )

          ],
        ),
      ),

    );
  }
}
