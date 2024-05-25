import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';

import '../../../core/app_decoration.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme_helper.dart';
import '../utlis/custom_elevated_button.dart';

class EmptyMsgWidget extends StatelessWidget {
  const EmptyMsgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
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
                    child: Text(" المفضبلة خالية ختى الان",
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineMedium?.copyWith(
                            fontFamily: "Cairo"
                        ))),
                Container(
                    width: getHorizontalSize(336),
                    margin: getMargin(left: 25, top: 21, right: 34),
                    child: Text("اذا كانت لديك مفضلة ستضهر هنا",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge?.copyWith(
                            fontFamily: "Cairo"
                        ))),
                CustomElevatedButton(
                    text: "العودة للصفحة الرئيسية",
                    margin: getMargin(top: 39),
                    buttonStyle: ButtonThemeHelper.fillGreen600.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(54)))),
                    buttonTextStyle: TextThemeHelper.titleMediumPrimary,
                    onTap: () {
                   Get.offAllNamed(AppRoutes.homeScreen);
                    })
              ]),
    );
  }
}
