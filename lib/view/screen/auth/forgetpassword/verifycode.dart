import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:vision1/core/app_decoration.dart';
import 'package:vision1/core/assets/image_constant.dart';
import 'package:vision1/core/custom_image_view.dart';
import 'package:vision1/core/services/services.dart';
import 'package:vision1/core/theme_helper.dart';
import '../../../../app_rout.dart';
import '../../../../core/button_theme_helper.dart';
import '../../../../core/text_theme_helper.dart';
import '../../../widgets/utlis/custom_elevated_button.dart';
import '../../../widgets/utlis/customtxtfield.dart';


class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: getPadding(all: 10),
            child: Column(
              children: [
                Padding(
                  padding:getPadding(top: 50,bottom: 20),
                  child: Center(
                    child: Column(children: [
                      Text("صفحة تسجيل الدخول",style: TextStyle( fontSize: 24,fontWeight: FontWeight.bold,color: appTheme.greenA700),),
                      const SizedBox(height: 20,),
                    ],),
                  ),
                ),



                OtpTextField(

                  fieldWidth: 50.0,
                  borderRadius: BorderRadius.circular(10),
                  numberOfFields: 5,
                  borderColor:const  Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                  Get.offAllNamed(AppRoutes.successResetPassword);
                  }, // end onSubmit
                ),

                const  SizedBox(height: 50,),

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
                      MyServices.setIsSignIn(false);
                      Get.toNamed(AppRoutes.successResetPassword);
                      // onTapLogout();
                    }),

                const  SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),


    );
  }
}
