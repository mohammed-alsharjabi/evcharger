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
import '../../../app_rout.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme/color.dart';
import '../../widgets/utlis/custom_elevated_button.dart';
import '../../widgets/utlis/customtxtfield.dart';


class LoginScreen extends StatelessWidget {
 const   LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp()) ;
    return  Scaffold(
      backgroundColor:AppColor.white,
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
                              CustomImageView(
                                  imagePath: ImageConstant.fire,
                                  color: AppColor.green1,
                                  height: getSize(150),
                                  width: getSize(150)),
                              Text("صفحة تسجيل الدخول",style: TextStyle( fontSize: 24,fontWeight: FontWeight.bold,color: appTheme.greenA700),),
                              const SizedBox(height: 20,),
                              Text("ادخل بيانات الحساب",style: theme.textTheme.titleMedium,),
                            ],),
                          ),
                        ),


                        const  SizedBox(height: 20,),
                        CustomInputText(inputType: TextInputType.emailAddress,hinttext: "الايميل",
                          iconData: Icons.email_outlined,isNumber: false,valid: (val){
                            return validInput(val!, 5, 100, "email");
                          },


                        ),


                        const  SizedBox(height: 20,),
                       GetBuilder<LoginControllerImp>(builder:(controller) =>
                           CustomInputText(inputType: TextInputType.text,
                         hinttext: "كلمة المرور",
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


                        //forget password btn
                        TextButton(onPressed: (){
                        controller.goToForgetPassword();
                        },
                          child: Text("نسيت كلمة المرور",
                            style: TextStyle(color: appTheme.gray400,fontWeight: FontWeight.bold,fontSize: 13),),),

                        const  SizedBox(height: 50,),

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
                              // controller.login();
                              Get.toNamed(AppRoutes.homeScreen);

                            }),

                        const  SizedBox(height: 20,),

                        Text("OR",style: theme.textTheme.titleMedium,),
                        const  SizedBox(height: 20,),

                        // google or apple sing
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
                        ),
                        const SizedBox(height: 20,),


                        //have not account  btn
                        Container(
                          margin: getMargin(left: 20,right: 50,bottom: 20),
                          child: Padding(
                            padding: getPadding(all: 10),

                            child: Row(
                              children: [
                                Text("ليس لديك حساب??",style: theme.textTheme.titleMedium,),

                                TextButton(onPressed: (){
                                  Get.toNamed(AppRoutes.singUp);
                                },
                                  child: Text("اضافة حساب جديد",style: TextStyle(color: appTheme.greenA700,fontWeight: FontWeight.bold,fontSize: 13),),)
                              ],
                            ),

                          ),
                        ),
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
