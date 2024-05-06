import 'package:flutter/material.dart';
import 'package:vision1/core/theme/color.dart';

import '../../../core/theme_helper.dart';

class CustomAppBar extends StatelessWidget {
  final String titleappbar ; 
  final void Function()? onPressedIcon ; 
  final void Function()? onPressedSearch ; 
   CustomAppBar({Key? key, required this.titleappbar, this.onPressedIcon, this.onPressedSearch}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
      height: 60,
      decoration:const  BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.gray4,
            spreadRadius: 3,
            blurRadius: 4,
          )
        ]
      ),
      child: Row(children: [
        Expanded(
            child:
            TextFormField(
          decoration: InputDecoration(
              prefixIcon: IconButton(icon:const  Icon(Icons.search) , onPressed: onPressedSearch),
              hintText: titleappbar,
              hintStyle:const TextStyle(fontSize: 17),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: AppColor.gray3),
        )
        ),
       const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: 60,
          padding:const EdgeInsets.symmetric(vertical: 8),
          child: IconButton(
              onPressed: onPressedIcon,
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: Colors.grey[600],
              )),
        )
      ]),
    );
  }
}




// ignore: must_be_immutable
class Custom1AppBar extends StatelessWidget implements PreferredSizeWidget {
  Custom1AppBar({
    Key? key,
    required this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
    key: key,
  );

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
    size.width,
    height,
  );
  _getStyle() {
    switch (styleType) {
      case Style.bgOutline:
        return Container(
          height: getVerticalSize(
            79,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            border: Border(
              bottom: BorderSide(
                color: appTheme.gray200,
                width: getHorizontalSize(
                  1,
                ),
              ),
            ),
          ),
        );
      case Style.bgFill:
        return Container(
          height: getVerticalSize(
            79,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgOutline,
  bgFill,
}





