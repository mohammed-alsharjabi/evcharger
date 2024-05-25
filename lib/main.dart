
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/tester/tester_screen.dart';
import 'package:vision1/tester/tseter_controller.dart';
import 'app_rout.dart';
import 'bindings/intialbindings.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

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
      title: 'Vehicle',
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      initialBinding: InitialBindings(),
      locale: localeController.language,
      theme: localeController.appTheme,
      initialRoute:AppRoutes.initialRoute ,
      // home:  TesterScreen(),
      getPages: AppRoutes.screens,

    );
  }
}
