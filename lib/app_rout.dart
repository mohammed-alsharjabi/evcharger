

import 'package:get/get.dart';
import 'package:vision1/core/midware/splash_midware.dart';
import 'package:vision1/view/screen/add_vehicle_details_screen.dart';
import 'package:vision1/view/screen/auth/login.dart';
import 'package:vision1/view/screen/charger_screen.dart';
import 'package:vision1/view/screen/favorit_screen.dart';
import 'package:vision1/view/screen/favorite_list_page/favorite_list_page.dart';
import 'package:vision1/view/screen/home_page.dart';
import 'package:vision1/view/screen/home_screen.dart';
import 'package:vision1/view/screen/my_vehicle_screen/my_vehicle_screen.dart';
import 'package:vision1/view/screen/review_booking_screen/review_booking_screen.dart';
import 'package:vision1/view/static_screen/onboarding_screen.dart';
import 'package:vision1/view/screen/profile_screen.dart';
import 'package:vision1/view/static_screen/splash_screen.dart';
import 'package:vision1/view/screen/station_screen.dart';

class AppRoutes {

  static const String initialRoute = '/initialRoute';

  //onBording
  static const String onboardingScreen = '/onboardingScreen';
  static const String splashScreen = '/splashScreen';



  //auth
  static const String login="/login";
  static const String register="/register";
  static const String restPassword="/restPassword";
  static const String forgetPassword="/forgetPassword";
  static const String phoneScreen="/phoneScreen";
  static const String otpVerification="/otpVerification";

  //station
  static const String stationScreen="/stationScreen";
  static const String stationBooking="/stationBooking";
  static const String directionScreen="/directionScreen";
  static const String chargerScreen="/chargerScreen";


  static const String homeScreen="/homeScreen";
  static const String homePage="/homePage";
  static const String profileScreen="/profileScreen";
  static const String favoriteStation="/favoriteStation";
  static const String bookingScreen="/bookingScreen";
  static const String addVehicleDetailsScreen="/AddVehicleDetailsScreen";
  static const String vehicleDetailsScreen = '/vehicleDetailsScreen';
  static const String favoriteListPage = '/favoriteListPage';


  static List<GetPage> screens =[
    GetPage(name:homeScreen , page:()=>const  HomeScreen()),
    GetPage(name:homePage , page:()=>const  HomePage()),
    GetPage(name:stationScreen , page:()=>  StationScreen()),
    GetPage(name:profileScreen , page:()=>const  ProfileScreen()),
    GetPage(name:favoriteStation , page:()=>const  MyFavoriteScreen()),
    GetPage(name:homeScreen , page:()=>const  HomeScreen()),
    GetPage(name:chargerScreen , page:()=>const  ChargerScreen()),
    GetPage(name:addVehicleDetailsScreen , page:()=>const  AddVehicleDetailsScreen()),
    GetPage(name:vehicleDetailsScreen , page:()=>const  MyVehicleScreen()),
    GetPage(name:favoriteListPage , page:()=>const  FavoriteListPage()),
    GetPage(name:bookingScreen , page:()=>const  ReviewBookingScreen()),

    //auth
    GetPage(name:login , page:()=>const  Login()),

//compunes
    GetPage(name:initialRoute , page:()=>const  SplashScreen()),
    GetPage(name:onboardingScreen , page:()=>const  OnboardingScreen()),

  ];

}