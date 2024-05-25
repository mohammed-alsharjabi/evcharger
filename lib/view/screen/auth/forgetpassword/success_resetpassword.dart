import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app_rout.dart';
import '../../../../controller/auth/forgetpassword/successresetpassword_controller.dart';
import '../../../../core/button_theme_helper.dart';
import '../../../../core/services/services.dart';
import '../../../../core/text_theme_helper.dart';
import '../../../../core/theme/color.dart';
import '../../../../core/theme_helper.dart';
import '../../../widgets/utlis/custom_elevated_button.dart';

class SuccessResetPasswordScreen extends StatelessWidget {
  const SuccessResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SuccessResetPasswordControllerImp controller =
    Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:AppColor.white,
        elevation: 0.0,
        title: Text('Success',
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
          Text("36".tr),
          const Spacer(),
          CustomElevatedButton(
              text: " تسجيل الدخول",
              margin: getMargin(right: 13,left: 13),
              buttonStyle: ButtonThemeHelper
                  .fillGreen600TL12.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                      double.infinity,
                      getVerticalSize(54)))),
              buttonTextStyle: TextThemeHelper.titleMediumPrimary,
              onTap: () {
                MyServices.setIsSignIn(false);
                // controller.goToPageLogin();
                Get.toNamed(AppRoutes.homeScreen);

              }),
        ]),
      ),
    );
  }
}
