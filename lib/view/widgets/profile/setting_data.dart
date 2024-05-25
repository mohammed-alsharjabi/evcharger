import 'package:get/get.dart';

import '../../../app_rout.dart';
import '../../../core/assets/image_constant.dart';


class SettingData {
  static List names = [
    "تعديل الملف الشخصي",
    "مركباتي",
    "المفضلة",
    "الحجوزات",
    "سياسة الخصوصية",

  ];
  static List image = [
    ImageConstant.imgIcuser,
    ImageConstant.imgCarOnerror22x22,
    ImageConstant.imgFavorite,
    ImageConstant.imgCalendarOnerror,
    ImageConstant.imgCarOnerror22x22,


  ];
  static List action = [
    AppRoutes.profileDataScreen,
    AppRoutes.vehicleDetailsScreen,
    AppRoutes.favoriteListPage,
    AppRoutes.bookingScreen,
    AppRoutes.termsConditionScreen,
  ];
}
