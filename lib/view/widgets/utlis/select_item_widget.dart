import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/data/datasource/statics/slelctordata/selector_data_type.dart';
import 'package:vision1/view/screen/select_item_screen.dart';

import '../../../controller/utils_controller/select_input_item_controller.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme_helper.dart';


class SelectItemWidget extends StatelessWidget {
  SelectItemWidget({super.key, required this.selectorDataType});

  final SelectorDataType selectorDataType;
  SelectInputItemController controller =Get.put(SelectInputItemController());

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
         Get.to(SelectItemScreen(selectorDataType: selectorDataType));
      },
      child:
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                border: Border.all(color: appTheme.gray300)
            ),
            child: Padding(
              padding: getPadding(left: 16,right: 16,top: 14,bottom: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(controller.getCurrentSelect(selectorDataType),style:controller.currentSelect.isEmpty? TextThemeHelper.bodyLargeGray600:
                  TextStyle(
                      color: appTheme.black,
                      fontWeight: FontWeight.w400,
                      fontSize: getFontSize(16),
                  ),),

                  CustomImageView(
                      imagePath: ImageConstant.imgArrowleft)
                ],
              ),
            ),
          )



    );

  }
}
