import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/view/screen/add_vehicle_details_screen.dart';
import 'package:vision1/view/screen/charger_page/charger_page.dart';
import 'package:vision1/view/screen/home_screen.dart';
import 'package:vision1/view/screen/review_booking_screen/review_booking_screen.dart';
import 'package:vision1/view/screen/select_item_screen.dart';
import 'package:vision1/view/static_screen/splash_screen.dart';

import 'app_rout.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'view/static_screen/onboarding_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  LocaleController localeController= Get.put(LocaleController());

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Vesion',
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: localeController.language,
      theme: localeController.appTheme,
      initialRoute:AppRoutes.initialRoute ,
      // home: const ChargerPage(),
      getPages: AppRoutes.screens,

    );
  }
}
