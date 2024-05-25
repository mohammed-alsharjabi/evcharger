import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/theme/color.dart';
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
        margin:const EdgeInsets.only(right: 16,left:16,top: 14 ),
        padding:const EdgeInsets.only(right: 16,left:16,top: 9,bottom: 9 ),

        decoration: AppDecoration.fill3.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
          color: AppColor.gray10,
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
                style: const TextStyle(fontWeight: FontWeight.normal,fontSize: 16,color: AppColor.black),
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






}
