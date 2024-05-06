import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/app_decoration.dart';
import 'package:vision1/core/assets/image_constant.dart';
import 'package:vision1/core/custom_image_view.dart';
import 'package:vision1/core/services/services.dart';
import 'package:vision1/core/theme_helper.dart';

import '../../../app_rout.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/text_theme_helper.dart';
import '../../widgets/utlis/custom_elevated_button.dart';
import '../../widgets/utlis/customtxtfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
          toolbarHeight: 200,
          title: Center(
        child: Column(children: [
          Text("صفحة تسجيل الدخول",style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold,color: appTheme.greenA700),),
          const SizedBox(height: 20,),
          Text("اهلا بعودتك مجددا ",style: theme.textTheme.titleMedium,),
        ],),
      )),

      bottomNavigationBar: Container(
        margin: getMargin(left: 20,right: 50,bottom: 20),
        child: Padding(
          padding: getPadding(all: 10),

            child: Row(
              children: [
                Text("ليس لديك حساب??",style: theme.textTheme.titleMedium,),

                TextButton(onPressed: (){}, child: Text("اضافة حساب جديد",style: TextStyle(color: appTheme.greenA700,fontWeight: FontWeight.bold,fontSize: 17),),)
              ],
            ),

        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: getPadding(all: 10),
            child: Column(
              children: [
                CustomInputText(inputType: TextInputType.emailAddress,hinttext: "الايميل",
                iconData: Icons.email_outlined,isNumber: false,valid: (val){},),
        
               const  SizedBox(height: 20,),
                CustomInputText(inputType: TextInputType.text,hinttext: "كلمة المرور",
                  iconData: Icons.lock_open_sharp,isNumber: false,valid: (val){},),
        
                const  SizedBox(height: 20,),
        
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
                      Get.offAll(AppRoutes.homePage);
                      // onTapLogout();
                    }),
        
                const  SizedBox(height: 20,),
        
                Text("OR",style: theme.textTheme.titleMedium,),
                const  SizedBox(height: 20,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomElevatedButton(
                        text: "  Google",
                        margin: getMargin(right: 13,left: 13),
                        leftIcon: CustomImageView(imagePath: ImageConstant.imggooglePay),
                        decoration: AppDecoration.fillOnPrimaryContainer,
                        buttonStyle: ButtonThemeHelper
                            .fillwhite.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                                double.infinity,
                                getVerticalSize(54)))),
                        buttonTextStyle: TextThemeHelper.bodymedium16black,
                        onTap: () {
                          Get.offAll(AppRoutes.homePage);
                          // onTapLogout();
                        }),
        
                    CustomElevatedButton(
                        text: "Apple",
                        margin: getMargin(right: 13,left: 13),
                        leftIcon: CustomImageView(imagePath: ImageConstant.imgApplePay),
                        decoration: AppDecoration.fillOnPrimaryContainer,
                        buttonStyle: ButtonThemeHelper
                            .fillwhite.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                                double.infinity,
                                getVerticalSize(54)))),
                        buttonTextStyle: TextThemeHelper.bodymedium16black,
                        onTap: () {
                          Get.offAll(AppRoutes.homePage);
                          // onTapLogout();
                        }),
        
        
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
