import 'package:get/get.dart';
import 'package:vision1/view/screen/add_vehicle_details_screen.dart';
import 'package:vision1/view/screen/favorit_screen.dart';
import 'package:vision1/view/screen/mybooking_screen.dart';

import '../view/screen/home_page.dart';
import '../view/screen/profile_screen.dart';
import '../view/screen/station_screen.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;


  List screenList= [
    HomePage(),
    AddVehicleDetailsScreen(),
    // MyBookingScreen(),
    // MyFavoriteScreen(),
    StationScreen(),
    ProfileScreen(),



  ];
  List  titlebottomappbar = [
    "الرئيسة" ,
    "البحث" ,
    "الحجوزات" ,
    "الاعدادات"
  ] ;

  @override
  changePage(int i) {
    currentPage = i;
    update();
  }
}
