import 'package:flutter/material.dart';
import 'package:vision1/core/theme/color.dart';

import '../../core/functions/validinput.dart';
import '../widgets/home/h_station.dart';
import '../widgets/home/station.dart';
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
    return SafeArea(
        child: Scaffold(
      backgroundColor:AppColor.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
            const   SizedBox(height: 20,),

              CustomInputText(
                  hinttext: "ابحث  عن المحطة",
                  inputType: TextInputType.text,
                  iconData: Icons.search,
                  valid: (val){
                    return validInput(val!, 7, 30, "password");
                  },
                  isNumber: false),

          const     Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text("المحطات القريبة ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: AppColor.black),),),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 277,
                padding: const EdgeInsets.only(bottom: 5),
                margin:const  EdgeInsets.only(bottom: 20),
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const StationCard(),
                ),
              ),
             const  SizedBox(height: 0,),
              buildTitleAll(title: " الاكثر تقيما",onTap: (){}),

              Column(
                children: [for (int i = 0; i < 5; i++)
                  StationHorizental()],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
