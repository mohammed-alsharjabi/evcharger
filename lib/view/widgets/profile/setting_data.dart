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
    "تسجيل الخروج",
  ];
  static List image = [
    ImageConstant.imgIcuser,
    ImageConstant.imgCarOnerror22x22,
    ImageConstant.imgFavorite,
    ImageConstant.imgCalendarOnerror,
    ImageConstant.imgCarOnerror22x22,
    ImageConstant.imgRefreshOnerror,

  ];
  static List action = [
    AppRoutes.homePage,
    AppRoutes.vehicleDetailsScreen,
    AppRoutes.favoriteListPage,
    AppRoutes.bookingScreen,
    AppRoutes.profileScreen,
    AppRoutes.homePage,
  ];
}
