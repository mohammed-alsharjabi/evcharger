

import 'package:get/get.dart';
import 'package:vision1/core/midware/splash_midware.dart';
import 'package:vision1/view/screen/add_booking_screen.dart';
import 'package:vision1/view/screen/add_vehicle_details_screen.dart';
import 'package:vision1/view/screen/auth/forgetpassword/forget_password_screen.dart';
import 'package:vision1/view/screen/auth/forgetpassword/resetpassword_screen.dart';
import 'package:vision1/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:vision1/view/screen/auth/login_screen.dart';
import 'package:vision1/view/screen/auth/signup_screen.dart';
import 'package:vision1/view/screen/auth/success_signup.dart';
import 'package:vision1/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:vision1/view/screen/charger_screen.dart';
import 'package:vision1/view/screen/favorit_screen.dart';
import 'package:vision1/view/screen/home_page.dart';
import 'package:vision1/view/screen/home_screen.dart';
import 'package:vision1/view/screen/review_booking_screen.dart';
import 'package:vision1/view/screen/search_screen.dart';
import 'package:vision1/view/screen/successBooking.dart';
import 'package:vision1/view/screen/terms_condition_screen.dart';
import 'package:vision1/view/static_screen/onboarding_screen.dart';
import 'package:vision1/view/screen/profile_screen.dart';
import 'package:vision1/view/static_screen/splash_screen.dart';
import 'package:vision1/view/screen/station_screen.dart';
import 'package:vision1/view/widgets/profile/edite_profile.dart';
import 'package:vision1/view/widgets/profile/profile_data_screen.dart';
import 'package:vision1/view/widgets/search/filter_screen.dart';

import 'view/screen/my_vehicle_screen.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  //onBording
  static const String onboardingScreen = '/onboardingScreen';
  static const String splashScreen = '/splashScreen';
  //auth
  static const String login="/login";
  static const String singUp="/singUp";
  static const String resetPassword="/resetPassword";
  static const String forgetPassword="/forgetPassword";
  static const String phoneScreen="/phoneScreen";
  static const String successSignUp="/successSignUp";
  static const String successResetPassword="/successResetpassword";
  static const String verificationCode="/verificationCode";
  //station
  static const String stationScreen="/stationScreen";
  static const String stationBooking="/stationBooking";
  static const String directionScreen="/directionScreen";
  static const String chargerScreen="/chargerScreen";

  static List<GetPage> screens =[
    GetPage(name:homeScreen , page:()=>const  HomeScreen()),
    GetPage(name:homePage , page:()=>const  HomePage()),
    GetPage(name:profileScreen , page:()=>const  ProfileScreen()),
    GetPage(name:editeProfile , page:()=>  EditeProfile()),
    GetPage(name:profileDataScreen , page:()=>  ProfileDataScreen()),
    GetPage(name:termsConditionScreen , page:()=> const TermsConditionScreen()),

    GetPage(name:stationScreen , page:()=>  StationScreen()),
    GetPage(name:searchScreen , page:()=>const  SearchScreen()),
    GetPage(name:favoriteListPage , page:()=>  FavoriteScreen()),
    GetPage(name:chargerScreen , page:()=>const  ChargerScreen()),
    GetPage(name:addVehicleDetailsScreen , page:()=>const  AddVehicleDetailsScreen()),
    GetPage(name:vehicleDetailsScreen , page:()=>const  MyVehicleScreen()),
    GetPage(name:filterScreen , page:()=>const  FilterScreen()),

    GetPage(name:bookingScreen , page:()=>const  ReviewBookingScreen()),
    GetPage(name:addBooking , page:()=>  AddBookingScreen()),
    GetPage(name:reviewBooking , page:()=>const   ReviewBookingScreen()),
    GetPage(name:successBooking , page:()=>const   SuccessBookingScreen()),


    //auth
    GetPage(name:login , page:()=>const  LoginScreen()),
    GetPage(name:singUp , page:()=>const  SingUpScreen()),
    GetPage(name:forgetPassword , page:()=>const  ForgetPassword()),
    GetPage(name:verificationCode , page:()=>const  VerifyCodeScreen()),
    GetPage(name:successSignUp , page:()=>const  SuccessSignUpScreen()),
    GetPage(name:successResetPassword , page:()=>const  SuccessResetPasswordScreen()),
    GetPage(name:resetPassword , page:()=>const  ResetPasswordScreen()),



//compunes
    GetPage(name:initialRoute , page:()=>const  SplashScreen()),
    GetPage(name:onboardingScreen , page:()=>const  OnboardingScreen()),

  ];


  static const String homeScreen="/homeScreen";
  static const String homePage="/homePage";
  static const String searchScreen="/searchScreen";

  static const String profileScreen="/profileScreen";
  static const String termsConditionScreen="/termsConditionScreen";
  static const String editeProfile="/editeProfile";
  static const String profileDataScreen="/profileDataScreen";

  static const String favoriteStation="/favoriteStation";
  static const String bookingScreen="/bookingScreen";
  static const String addVehicleDetailsScreen="/addVehicleDetailsScreen";
  static const String vehicleDetailsScreen = '/vehicleDetailsScreen';
  static const String favoriteListPage = '/favoriteListPage';
  static const String filterScreen = '/filterScreen';
  static const String addBooking = '/addBooking';
  static const String reviewBooking = '/reviewBooking';
  static const String successBooking = '/successBooking';



}