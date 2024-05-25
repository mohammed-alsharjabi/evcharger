import 'package:flutter/material.dart';

import '../../../core/assets/image_constant.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/theme_helper.dart';

class ProfileAvatarItem extends StatelessWidget {


   const ProfileAvatarItem({ this.avatarPath, this.name, this.phoneNumber,super.key});

   final String? avatarPath;
   final String? phoneNumber;
   final String? name;
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),

      child: Column(
children: [
  CustomImageView(
    imagePath: avatarPath??ImageConstant.imgAvtar1,
    height: getSize(104,),
    width: getSize(104,),
    radius: BorderRadius.circular(50),
    margin: getMargin(top: 20,),),
 const  SizedBox(height: 5,),
  Padding(
    padding: getPadding(top: 0,),
    child: Text(
      name!??"mousa",
      overflow: TextOverflow.ellipsis,
      style: theme.textTheme.headlineMedium,
    ),
  ),


  Padding(
    padding: getPadding(top: 0,),
    child: Text(
      phoneNumber!,
      overflow: TextOverflow.ellipsis,
      style: theme.textTheme.bodyLarge,
    ),
  ),


],
      ),

    );
  }
}
