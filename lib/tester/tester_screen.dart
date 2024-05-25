import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/class/handlingdataview.dart';
import 'package:vision1/core/class/statusrequest.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/core/theme_helper.dart';
import 'package:vision1/tester/tseter_controller.dart';


class TesterScreen extends StatefulWidget {
  const TesterScreen({super.key});

  @override
  State<TesterScreen> createState() => _TesterScreenState();
}

class _TesterScreenState extends State<TesterScreen> {
bool  isLoading=true;
TesterController c= Get.put(TesterController());
  @override
  Widget build(BuildContext context) {
    Get.put(TesterController());
    return  Scaffold(
      backgroundColor: AppColor.backGroundColor,
appBar: AppBar(title: Text("Tester "),actions: [
  IconButton(onPressed:()async{ await c.getDataByPost();
    setState(() {});
    },
      icon: Icon(Icons.refresh))
]),

      body:GetBuilder<TesterController>(builder: (controller) =>
    HandlingDataView(statusRequest: controller.statusRequest,
      widget:   Container(
          color: AppColor.gray10,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
          child:GetBuilder<TesterController>(builder: (controller) {


              return ListView.builder(itemBuilder: (context, index) => Text("${controller.title}"),);

          }
          )

      ),)
      )
    );
  }
}
