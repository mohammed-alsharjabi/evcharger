import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';
import 'package:vision1/data/datasource/statics/slelctordata/selector_data_type.dart';

import '../../core/assets/image_constant.dart';
import '../../core/button_theme_helper.dart';
import '../../core/custom_image_view.dart';
import '../../core/text_theme_helper.dart';
import '../../core/theme_helper.dart';
import '../widgets/utlis/custom_elevated_button.dart';
import '../widgets/utlis/customappbar.dart';
import '../widgets/utlis/select_item_widget.dart';


class AddVehicleDetailsScreen extends StatelessWidget {
  const AddVehicleDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
        color: appTheme.white,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: theme.colorScheme.primary,
          appBar: Custom1AppBar(
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
              title: Text(
                "ادخل بيانات السيارة",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.headlineMedium!.copyWith(
                  fontFamily: "Cairo",
                  color: theme.colorScheme.onError.withOpacity(1),),),

              styleType: Style.bgOutline),

body: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SelectItemWidget(selectorDataType: SelectorDataType.brand),
    SelectItemWidget(selectorDataType: SelectorDataType.model),
    SelectItemWidget(selectorDataType: SelectorDataType.connector),
  ],

),


            bottomNavigationBar: CustomElevatedButton(
                text: "قائمة السيارات",
                margin: getMargin(left: 16, right: 16, bottom: 40),
                buttonStyle: ButtonThemeHelper.fillGreen600.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(54)))),
                buttonTextStyle: TextThemeHelper.titleMediumPrimary,
                onTap: () {
                  Get.toNamed(AppRoutes.vehicleDetailsScreen);
                })

        )
    );
  }
}
