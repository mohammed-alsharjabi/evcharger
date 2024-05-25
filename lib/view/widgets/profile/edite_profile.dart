import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/functions/alertexitapp.dart';

import '../../../app_rout.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/functions/validinput.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme/color.dart';
import '../../../core/theme_helper.dart';
import '../utlis/custom_elevated_button.dart';
import '../utlis/customappbar.dart';
import '../utlis/customtxtfield.dart';

// ignore: must_be_immutable
class EditeProfile extends StatelessWidget {
   EditeProfile({super.key});

   String?avatarPath;
   String?name;
   String?email;
   String?phone;

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.backGroundColor,

      body: Container(
        padding:const  EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(

          children: [

            const SizedBox(height: 10,),

            //app bar
            Custom1AppBar(
                height: 30,
                leading: CustomImageView(
                    height: getSize(24),
                    width: getSize(24),
                    color: AppColor.primary,
                    imagePath: ImageConstant.imgArrowleft,
                    onTap: () {

                    }),
                centerTitle: true,
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("تعديل الملف الشخصي",
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineMedium!.copyWith(
                      fontFamily: "Cairo",
                      fontSize: 18,
                      color: theme.colorScheme.onError.withOpacity(1),),),
                ),
                styleType: Style.bgOutline),
            const SizedBox(height: 15,),


            //avatar
            CustomImageView(
              imagePath: avatarPath??ImageConstant.mousaAvatarBg,
              height: getSize(104),
              width: getSize(104),
              fit: BoxFit.cover,
              radius: BorderRadius.circular(50),
              margin: getMargin(top: 10,),),

            //name
            const  SizedBox(height: 25,),
            CustomInputText(

              inputType: TextInputType.text,hinttext: "الاسم",
              iconData: Icons.person_outline,isNumber: false,valid: (val){
                return validInput(val!, 5, 100, "name");
              },
            ),


            //name
            const  SizedBox(height: 15,),
            CustomInputText(inputType: TextInputType.emailAddress,hinttext: "الايميل",
              iconData: Icons.email_outlined,isNumber: false,valid: (val){
                return validInput(val!, 5, 100, "name");
              },
            ),


            //phone
            const  SizedBox(height: 15,),
            CustomInputText(
              inputType: TextInputType.number,
              hinttext: "رقم الجوال",
              iconData: Icons.phone_android_outlined,
              isNumber: true,
              valid: (val){
                return validInput(val!, 5, 12, "phone");
              },

            ),


          ],
        ),
      ),

      bottomNavigationBar:CustomElevatedButton(
          text: "حفظ",
          margin: getMargin(right: 17,left: 17,bottom: 30),
          buttonStyle: ButtonThemeHelper
              .fillGreen600TL12.copyWith(
              fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.infinity,
                  getVerticalSize(54)))),
          buttonTextStyle: TextThemeHelper.titleMediumPrimary,
          onTap: () {

            Future.delayed(const Duration(milliseconds: 200), () =>
                showMyDialog(context: context,title: "تأكيد العميلة", subtitle: "عند التعديل  سيتم تغيير البيانات  بالكامل",
                    icon: ImageConstant.imgCheckmarkPrimary,onConfirm: (){Get.offNamed(AppRoutes.homeScreen);}));

          }),

    );
  }
}
