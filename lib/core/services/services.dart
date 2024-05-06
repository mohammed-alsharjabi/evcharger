import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {

  late SharedPreferences sharedPreferences;

  static String prefName = "ma";
  static String isIntro = "${prefName}isIntro";
  static String signIn = "${prefName}signIn";
  static String locationScreenVisible = "${prefName}location";


  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }





  static setIsIntro(bool intro) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isIntro, intro);
  }

  static getIsIntro() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool intValue = prefs.getBool(isIntro) ?? true;
    return intValue;
  }



  static setIsSignIn(bool isFav) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(signIn, isFav);
  }

  static getIsSignIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(signIn) ?? true;
  }

  static setIsLocation(bool isFav) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(locationScreenVisible, isFav);
  }

  static getIsLocation() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(locationScreenVisible) ?? false;
  }




}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
