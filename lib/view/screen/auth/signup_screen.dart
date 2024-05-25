import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/controller/auth/signup_controller.dart';
import 'package:vision1/core/app_decoration.dart';
import 'package:vision1/core/assets/image_constant.dart';
import 'package:vision1/core/class/handlingdataview.dart';
import 'package:vision1/core/custom_image_view.dart';
import 'package:vision1/core/functions/alertexitapp.dart';
import 'package:vision1/core/functions/validinput.dart';
import 'package:vision1/core/services/services.dart';
import 'package:vision1/core/theme_helper.dart';
import '../../../app_rout.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/text_theme_helper.dart';
import '../../widgets/utlis/custom_elevated_button.dart';
import '../../widgets/utlis/customtxtfield.dart';


class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return  Scaffold(
backgroundColor: theme.primaryColor,
      body:WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(builder:
            (controller) => HandlingDataView(statusRequest: controller.statusRequest,
                widget:
               Form(
                 key: controller.formstate,
                 child:  SingleChildScrollView(
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
                                 Text("صفحة انشاء حساب",style: TextStyle( fontSize: 24,fontWeight: FontWeight.bold,color: appTheme.greenA700),),
                                 const SizedBox(height: 20,),
                                 Text("ادخل بيانات الحساب",style: theme.textTheme.titleMedium,),
                               ],),
                             ),
                           ),


                           //name input text
                           CustomInputText(inputType: TextInputType.text,hinttext: "الاسم",
                             iconData: Icons.person_outline_rounded,isNumber: false,valid: (val){
                               return validInput(val!, 4, 20, "name");
                             },),

                           const  SizedBox(height: 10,),
                           //email input text
                           CustomInputText(inputType: TextInputType.emailAddress,hinttext: "الايميل",
                             iconData: Icons.email_outlined,isNumber: false,
                             valid: (val){
                               return validInput(val!, 8, 40, "email");
                             },

                           ),

                           const  SizedBox(height: 10,),

                           //phone input text
                           CustomInputText(
                             inputType: TextInputType.number,
                             hinttext: "رقم الجوال",
                             iconData: Icons.phone_android_outlined,
                             isNumber: true,
                             valid: (val){
                               return validInput(val!, 5, 12, "phone");
                             },

                           ),

                           const  SizedBox(height: 10,),
                           //password input text
                           GetBuilder<SignUpControllerImp>(builder:(controller) =>
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


                           const  SizedBox(height: 25,),

                           //auth button
                           CustomElevatedButton(
                               text: " تسجيل",
                               margin: getMargin(right: 13,left: 13),
                               buttonStyle: ButtonThemeHelper
                                   .fillGreen600TL12.copyWith(
                                   fixedSize: MaterialStateProperty.all<Size>(Size(
                                       double.infinity,
                                       getVerticalSize(54)))),
                               buttonTextStyle: TextThemeHelper.titleMediumPrimary,
                               onTap: () {
                                 MyServices.setIsSignIn(false);
                                 // controller.signUp();
                                 Get.offAllNamed(AppRoutes.successSignUp);

                               }),

                           const  SizedBox(height: 15,),

                           Text("OR",style: theme.textTheme.titleMedium,),
                           const  SizedBox(height: 15,),

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
                                     Get.offAll(AppRoutes.successSignUp);
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

                           //have  account  btn
                           Container(
                             alignment:  Alignment.center,
                             width: MediaQuery.of(context).size.width,
                             margin: getMargin(left: 50,right: 80,bottom: 40),
                             child: Padding(
                               padding: getPadding(all: 10),

                               child: Row(
                                 children: [
                                   Text(" لديك حساب?",style: theme.textTheme.titleMedium,),

                                   TextButton(onPressed: (){
                                  controller.goToSignIn();
                                   },
                                     child: Text("تسجيل الدخول",style: TextStyle(color: appTheme.greenA700,fontWeight: FontWeight.bold,fontSize: 13),),)
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
        ),
      )


    );
  }
}
