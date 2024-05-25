
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
import '../../data/model/list_favorite_item_model.dart';
import '../widgets/favorite_widget/empty_msg_widget.dart';
import '../widgets/favorite_widget/favorite_card.dart';
import '../widgets/utlis/custom_elevated_button.dart';
import '../widgets/utlis/customappbar.dart';
import '../../controller/favorite_list_controller.dart';

//
//
// class CustomBottomBarController extends GetxController{
//   int selectedIndex = 0;
//   getIndex(int index){
//     selectedIndex = index;
//     update();
//   }
// }


class FavoriteScreen extends StatelessWidget {
  FavoriteListControllerImp controller = Get.put(FavoriteListControllerImp());

  FavoriteScreen({super.key});


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

             const  EmptyMsgWidget()
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
                        ListFavoriteItemModel model =
                        controller
                            .favoriteListModelObj[index];
                        return FavouriteItemListFormate(model);

                      },),
                  ),
                ],
              ),


            )));
  }





  onTapStation() {
    Get.toNamed(
      AppRoutes.stationScreen,
    );
  }
}









