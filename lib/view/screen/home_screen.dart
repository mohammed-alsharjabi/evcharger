import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_screen_controller.dart';
import '../../core/theme/color.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(




          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColor.gray,
                  spreadRadius: 4,
                  blurRadius: 2,
                  offset: Offset(0, 9)
                )
              ]
            ),
            child: BottomNavigationBar(

              onTap: (val) {
                controller.changePage(val);
              },
              backgroundColor: AppColor.backGroundColor,
              elevation: 10,
              showSelectedLabels: true,

              selectedItemColor: AppColor.green2,
              unselectedItemColor: AppColor.black,
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.currentPage,
              items:  [
                BottomNavigationBarItem(icon:const Icon(Icons.home), label: controller.titlebottomappbar[0]),
                BottomNavigationBarItem(icon:const Icon(Icons.search), label: controller.titlebottomappbar[1]),


                BottomNavigationBarItem(icon:const Icon(Icons.book_online), label:controller.titlebottomappbar[2]),
                BottomNavigationBarItem(icon:const Icon(Icons.person), label:controller.titlebottomappbar[3]),
              ],
            ),
          ),

          body: controller.screenList[controller.currentPage],
        ));
  }
}
