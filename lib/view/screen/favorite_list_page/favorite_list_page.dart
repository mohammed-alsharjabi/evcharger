import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app_rout.dart';
import '../../../core/app_decoration.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme_helper.dart';
import '../../widgets/utlis/custom_elevated_button.dart';
import '../../widgets/utlis/customappbar.dart';
import '../favorite_list_page/widgets/listrectangle44_item_widget.dart';
import 'controller/favorite_list_controller.dart';
import 'models/listrectangle44_item_model.dart';




class CustomBottomBarController extends GetxController{
  int selectedIndex = 0;
  getIndex(int index){
    selectedIndex = index;
    update();
  }
}


class FavoriteListPage extends StatefulWidget {
  const FavoriteListPage({super.key});

  @override
  State<FavoriteListPage> createState() => _FavoriteListPageState();
}

class _FavoriteListPageState extends State<FavoriteListPage> {
 FavoriteListController controller = Get.put(FavoriteListController());


 @override
 Widget build(BuildContext context) {
   return WillPopScope(
       onWillPop: () async {
         Get.back();
         return true;
       },
       child: ColorfulSafeArea(
           color: appTheme.white,
           child: Scaffold(
               backgroundColor: theme.colorScheme.primary,

               body:controller.favoriteListModelObj.isEmpty?

               GetBuilder<CustomBottomBarController>(
                 init: CustomBottomBarController(),
                 builder:(customBottomBarController) =>  Container(
                     width: double.maxFinite,
                     padding: getPadding(left: 16, right: 16),
                     child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Card(
                               clipBehavior: Clip.antiAlias,
                               elevation: 0,
                               margin: getMargin(top: 0),
                               color: appTheme.green50,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadiusStyle.circleBorder60),
                               child: Container(
                                   height: getSize(120),
                                   width: getSize(120),
                                   padding: getPadding(
                                       left: 28, top: 30, right: 28, bottom: 30),
                                   decoration: AppDecoration.fill2.copyWith(
                                       borderRadius:
                                       BorderRadiusStyle.circleBorder60),
                                   child: Stack(children: [
                                     CustomImageView(
                                         imagePath: ImageConstant.imgFavoriteGreen600,
                                         height: getVerticalSize(58),
                                         width: getHorizontalSize(64),
                                         alignment: Alignment.center)
                                   ]))),
                           Padding(
                               padding: getPadding(top: 23),
                               child: Text("lbl_no_favorite_yet".tr,
                                   overflow: TextOverflow.ellipsis,
                                   textAlign: TextAlign.left,
                                   style: theme.textTheme.headlineMedium)),
                           Container(
                               width: getHorizontalSize(336),
                               margin: getMargin(left: 25, top: 21, right: 34),
                               child: Text("msg_add_your_favorite".tr,
                                   maxLines: 2,
                                   overflow: TextOverflow.ellipsis,
                                   textAlign: TextAlign.center,
                                   style: theme.textTheme.bodyLarge)),
                           CustomElevatedButton(
                               text: "lbl_go_to_home".tr,
                               margin: getMargin(top: 39),
                               buttonStyle: ButtonThemeHelper.fillGreen600.copyWith(
                                   fixedSize: MaterialStateProperty.all<Size>(
                                       Size(double.maxFinite, getVerticalSize(54)))),
                               buttonTextStyle: TextThemeHelper.titleMediumPrimary,
                               onTap: () {
                                 customBottomBarController.getIndex(0);

                               })
                         ])),
               )
                   : Column(
                     children: [
                       Custom1AppBar(
                           height: getVerticalSize(79),
                           leadingWidth: 42,
                           leading: CustomImageView(
                               height: getSize(24),
                               width: getSize(24),
                               imagePath: ImageConstant.imgArrowleft,
                               margin: getMargin(left: 18, top: 29, bottom: 26),
                               onTap: () {

                               }),
                           centerTitle: true,
                           title: Text("المفضلة",
                             overflow: TextOverflow.ellipsis,
                             textAlign: TextAlign.left,
                             style: theme.textTheme.headlineMedium!.copyWith(
                               fontFamily: "Cairo",
                               color: theme.colorScheme.onError.withOpacity(1),),),

                           styleType: Style.bgOutline),
                       Expanded(
                         child: ListView.builder(
                           primary: false,
                           shrinkWrap: true,
                           padding: getPadding(left: 16, top: 8, right: 16),
                           itemCount: controller.favoriteListModelObj.length,
                           itemBuilder: (context, index) {
                             Listrectangle44ItemModel model =
                             controller
                                 .favoriteListModelObj[index];
                             return FavouriteItemListFormate(model);

                           },),
                       ),
                     ],
                   ),







               // Padding(
               //     padding: getPadding(left: 16, top: 32, right: 21),
               //     child: Obx(() => GridView.builder(
               //         shrinkWrap: true,
               //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               //             mainAxisExtent: getVerticalSize(194),
               //             crossAxisCount: 2,
               //             mainAxisSpacing: getHorizontalSize(17),
               //             crossAxisSpacing: getHorizontalSize(17)),
               //         physics: BouncingScrollPhysics(),
               //         itemCount: controller.myVehicleModelObj.value
               //             .gridrectangle44ItemList.value.length,
               //         itemBuilder: (context, index) {
               //          Gridrectangle44ItemModel model = controller
               //              .myVehicleModelObj
               //              .value
               //              .gridrectangle44ItemList
               //              .value[index];
               //          return Gridrectangle44ItemWidget(model,
               //              onTapColumnrectangle: () {
               //               onTapColumnrectangle();
               //              });
               //         }))),
               )));
 }





 onTapStation() {
  Get.toNamed(
   AppRoutes.stationScreen,
  );
 }
}









