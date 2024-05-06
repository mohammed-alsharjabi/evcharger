import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/view/widgets/profile/setting_model.dart';

import '../../../core/app_decoration.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/theme_helper.dart';


// ignore: must_be_immutable
class SettingItem extends StatelessWidget {
  Color geryC = Colors.grey;

  SettingModel settingModel;
  SettingItem({required this.settingModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        settingModel.onTap.call();
      },
      child: Container(
        margin:const EdgeInsets.only(right: 16,left:16,top: 16 ),
        padding:const EdgeInsets.only(right: 16,left:16,top: 16,bottom: 15 ),

        decoration: AppDecoration.fill3.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: settingModel.icon,
              height: getSize(22,),
              width: getSize(22),
              margin: getMargin(top: 1,),
            ),
           const SizedBox(width: 20,),
            Padding(
              padding: getPadding(left: 8, top: 1, bottom: 1,),
              child: Text(
                settingModel.name,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge,
              ),
            ),
            const  Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgarrowLeft,
              height: getSize(16,),
              width: getSize(16,),
              margin: getMargin(top: 3, right: 1, bottom: 3,),
            ),
          ],
        ),
      ),
    );
  }


  static List<SettingItem> listSettingItem = List.generate(
      SettingModel.settingListItem.length,
          (index) =>
          SettingItem(settingModel: SettingModel.settingListItem[index]));





  static Widget buildLogOutWidget() {
    return GestureDetector(
        child: Container(
            margin:const  EdgeInsets.symmetric(horizontal: 23),
            padding:const  EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 28,
                      width: 28,
                      color: Colors.red,
                      margin:const
                      EdgeInsets.only(left: 9, top: 4, bottom: 5)),
                  Padding(
                      padding: const EdgeInsets.only(left: 194, top: 6),
                      child: Text("lbl6".tr,
                          textAlign: TextAlign.center,
                          style:theme.textTheme.headlineSmall!.copyWith(
                              color: theme.colorScheme.primaryContainer)),
                  )])));
  }
}
