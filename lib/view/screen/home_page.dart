import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/data/datasource/statics/test_data.dart';
import 'package:vision1/tester/tseter_controller.dart';

import '../../core/functions/validinput.dart';
import '../widgets/home/h_station.dart';
import '../widgets/home/home_page_header.dart';
import '../widgets/home/station.dart';
import '../widgets/station/stataion_card.dart';
import '../widgets/utlis/build_h_title.dart';
import '../widgets/utlis/customappbar.dart';
import '../widgets/utlis/customtxtfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor:AppColor.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [

             const  HomePageHeader(),
              buildTitleAll(title: " الاكثر تقيما",onTap: (){}),



              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [for (int i = 0; i < 5; i++)
                     StationHomeCard(stationData: TestData.stationLis1[i],)],
                ),
              ),
              buildTitleAll(title: "المحطات القريبة",onTap: (){}),

              Container(
                width: MediaQuery.of(context).size.width,

                padding: const EdgeInsets.only(bottom: 5),
                margin:const  EdgeInsets.only(bottom: 20),
                child: ListView.builder(
                  reverse: true,
                  itemCount: TestData.stationLis1.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) =>  StationHorizontal(stationData: TestData.stationLis1[index]),
                ),
              ),


            ],
          ),
        ),

    ));
  }




}


