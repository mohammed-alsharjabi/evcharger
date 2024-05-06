import 'package:flutter/material.dart';
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
      child: Column(
        children: [
        const   ProfileAvatarItem(avatarPath: "",phoneNumber: "",),


Column(
  children: SettingItem.listSettingItem,
)




        ],
      ),
    );

  }
}




