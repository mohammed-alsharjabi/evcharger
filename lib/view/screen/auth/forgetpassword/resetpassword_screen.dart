import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/controller/auth/login_controller.dart';
import 'package:vision1/core/app_decoration.dart';
import 'package:vision1/core/assets/image_constant.dart';
import 'package:vision1/core/class/handlingdataview.dart';
import 'package:vision1/core/class/statusrequest.dart';
import 'package:vision1/core/custom_image_view.dart';
import 'package:vision1/core/services/services.dart';
import 'package:vision1/core/theme_helper.dart';

import '../../../../app_rout.dart';
import '../../../../core/button_theme_helper.dart';
import '../../../../core/functions/alertexitapp.dart';
import '../../../../core/functions/validinput.dart';
import '../../../../core/text_theme_helper.dart';
import '../../../widgets/utlis/custom_elevated_button.dart';
import '../../../widgets/utlis/customtxtfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const   ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp()) ;
    return  Scaffold(


      body: WillPopScope(onWillPop: alertExitApp, child: GetBuilder<LoginControllerImp>(
        builder: (controller) => HandlingDataView(statusRequest:controller.statusRequest,
            widget:Form(
              key: controller.formstate,
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: getPadding(all: 10),
                    child: Column(
                      children: [

                        //screen header
                        Padding(
                          padding:getPadding(top: 50,bottom: 20),
                          child: Center(
                            child: Column(children: [
                              Text(" اعادة كلمة  المرور الجديدة ",style: TextStyle( fontSize: 24,fontWeight: FontWeight.bold,color: appTheme.greenA700),),
                              const SizedBox(height: 20,),
                              Text("  من فضللك احفط بياناتك",style: theme.textTheme.titleMedium,),
                            ],),
                          ),
                        ),


                        const  SizedBox(height: 20,),
                        GetBuilder<LoginControllerImp>(builder:(controller) =>
                            CustomInputText(inputType: TextInputType.text,
                              hinttext: "كلمة المرور الجديدة",
                              obscureText: controller.isshowpassword,
                              onTapIcon: () {
                                controller.showPassword();
                              },
                              isNumber: false,
                              valid: (val) {
                                return validInput(val!, 4, 12, "password");
                              },
                              mycontroller: controller.password,
                              iconData: Icons.lock_open_sharp,



                            ),  ),
                        const  SizedBox(height: 20,),
                        GetBuilder<LoginControllerImp>(builder:(controller) =>
                            CustomInputText(inputType: TextInputType.text,
                              hinttext: "تأكيد كلمة المرور ",
                              obscureText: controller.isshowpassword,
                              onTapIcon: () {
                                controller.showPassword();
                              },
                              isNumber: false,
                              valid: (val) {
                                return validInput(val!, 4, 12, "password");
                              },
                              mycontroller: controller.password,
                              iconData: Icons.lock_open_sharp,



                            ),  ),



                        const  SizedBox(height: 50,),

                        CustomElevatedButton(
                            text: "استعادة كلمة المرور",
                            margin: getMargin(right: 13,left: 13),
                            buttonStyle: ButtonThemeHelper
                                .fillGreen600TL12.copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(Size(
                                    double.infinity,
                                    getVerticalSize(54)))),
                            buttonTextStyle: TextThemeHelper.titleMediumPrimary,
                            onTap: () {
                              MyServices.setIsSignIn(false);
                              // controller.login();
                              Get.toNamed(AppRoutes.verificationCode);

                            }),


                      ],
                    ),
                  ),
                ),
              ),
            )
        ),
      ),),


    );
  }
}
