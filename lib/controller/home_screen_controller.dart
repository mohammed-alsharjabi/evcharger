import 'package:get/get.dart';
import 'package:vision1/view/screen/add_vehicle_details_screen.dart';
import 'package:vision1/view/screen/favorit_screen.dart';
import 'package:vision1/view/screen/mybooking_screen.dart';
import 'package:vision1/view/screen/search_screen.dart';

import '../view/screen/home_page.dart';
import '../view/screen/profile_screen.dart';
import '../view/screen/station_screen.dart';
import '../view/widgets/search/animated_list.dart';
import '../view/widgets/search/filter_screen.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;


  List screenList= [
    HomePage(),
    SearchScreen(),
    // MyBookingScreen(),
    // MyFavoriteScreen(),
    FavoriteScreen(),
    ProfileScreen(),
    // FilterScreen()



  ];


  List  titlebottomappbar = [
    "الرئيسة" ,
    "البحث" ,
    "المفضلة" ,
    "الاعدادات"
  ] ;

  @override
  changePage(int i) {
    currentPage = i;
    update();
  }
}
