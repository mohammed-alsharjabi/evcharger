import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/localization/theme.dart';

import '../services/services.dart';

class LocaleController extends GetxController {
  
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = Themes.themeArabic;

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "ar" ? Themes.themeArabic : Themes.themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }


  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = Themes.themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = Themes.themeArabic;
    } else {
      // language = Locale(Get.deviceLocale!.languageCode);
      language = const Locale("ar");
      appTheme =Themes.themeArabic;
    }
    super.onInit();
  }
}
