import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/view/widgets/utlis/simple_get_data.dart';

import '../../../app_rout.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme/color.dart';
import '../../../core/theme_helper.dart';
import '../utlis/custom_elevated_button.dart';
import '../utlis/customappbar.dart';

class ProfileDataScreen extends StatelessWidget {
   ProfileDataScreen({super.key});
  String?avatarPath;
  String?name;
  String?email;
  String?phone;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.backGroundColor,

      body: Container(
        padding:const  EdgeInsets.all(14),
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
SimpleGetDataItem(name: "Mousa Daghriri",title: "name"),

            //name
            const  SizedBox(height: 15,),

            SimpleGetDataItem(name: "mousadaghriri@gmail.com",title: "email"),

            //phone
            const  SizedBox(height: 15,),

            SimpleGetDataItem(name: "563188150",title: "phone"),

          ],
        ),
      ),

      bottomNavigationBar:CustomElevatedButton(
          text: "تعديل",
          margin: getMargin(right: 17,left: 17,bottom: 30),
          buttonStyle: ButtonThemeHelper
              .fillGreen600TL12.copyWith(
              fixedSize: MaterialStateProperty.all<Size>(Size(
                  double.infinity,
                  getVerticalSize(54)))),
          buttonTextStyle: TextThemeHelper.titleMediumPrimary,
          onTap: () {
            Get.toNamed(AppRoutes.editeProfile);

          }),

    );
  }
}
