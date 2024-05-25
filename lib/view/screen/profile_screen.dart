import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';
import 'package:vision1/core/assets/image_constant.dart';
import 'package:vision1/core/services/services.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/view/widgets/profile/setting_model.dart';
import 'package:vision1/view/widgets/utlis/sure_bottomsheet.dart';
import '../widgets/profile/profile_avatar.dart';
import '../widgets/profile/setting_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:const  BouncingScrollPhysics(),
      child: Container(
        color: AppColor.backGroundColor,
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
           const  SizedBox(height: 50,),
             ProfileAvatarItem(avatarPath: ImageConstant.mousaAvatarBg,name: "Mousa Daghriri ",phoneNumber: "563188150",),


        Column(
          children: SettingItem.listSettingItem,
        ),


            bluidLogOut(),

          ],
        ),
      ),
    );

  }
  bluidLogOut(){

    return
      SettingItem(settingModel: SettingModel(name: "تسجيل الخروج",icon: ImageConstant.imgRefreshOnerror,
          onTap: (){
Get.bottomSheet(
    SureBottomsheet(title: "هل تريد تسجيل الخروج",msg: "عند تسجيل الخروج سيتعين عليك التسجيل من جديد",
      onTap: () {
      MyServices.setIsSignIn(true);
      Get.offAllNamed(AppRoutes.initialRoute);
     setState(() {

     });
    },)
);
      }),);

  }
}




