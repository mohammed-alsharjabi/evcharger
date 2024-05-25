import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/core/theme_helper.dart';

import '../../../app_rout.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/text_theme_helper.dart';
import '../../widgets/utlis/custom_elevated_button.dart';

class SuccessSignUpScreen extends StatelessWidget {
  const SuccessSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: theme.primaryColor,
        elevation: 0.0,
        title: Text('32'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.gray)),
      ),

      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.green1,
          )),
          Text("37".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 30)),
          Text("38".tr),
          const Spacer(),
          CustomElevatedButton(
              text: "ارسال",
              margin: getMargin(right: 13,left: 13),
              buttonStyle: ButtonThemeHelper
                  .fillGreen600TL12.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                      double.infinity,
                      getVerticalSize(54)))),
              buttonTextStyle: TextThemeHelper.titleMediumPrimary,
              onTap: () {

                Get.offAll(AppRoutes.homeScreen);
                // onTapLogout();
              }),

          const SizedBox(height: 30)
        ]),
      ),
    );
  }
}
