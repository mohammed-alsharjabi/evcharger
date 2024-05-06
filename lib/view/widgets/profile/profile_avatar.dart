import 'package:flutter/material.dart';

import '../../../core/assets/image_constant.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/theme_helper.dart';

class ProfileAvatarItem extends StatelessWidget {


   const ProfileAvatarItem({required this.avatarPath,required this.phoneNumber,super.key});

   final String avatarPath;
   final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),

      child: Column(
children: [
  CustomImageView(
    imagePath: ImageConstant.imgAvtar1,
    height: getSize(104,),
    width: getSize(104,),
    margin: getMargin(top: 20,),),
 const  SizedBox(height: 5,),
  Padding(
    padding: getPadding(top: 0,),
    child: Text(
      "محمد الشرجبي",
      overflow: TextOverflow.ellipsis,
      style: theme.textTheme.headlineMedium,
    ),
  ),


  Padding(
    padding: getPadding(top: 0,),
    child: Text(
      "00967772351246",
      overflow: TextOverflow.ellipsis,
      style: theme.textTheme.titleSmall,
    ),
  ),


],
      ),

    );
  }
}
