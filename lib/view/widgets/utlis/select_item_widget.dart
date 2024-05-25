import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/data/datasource/statics/slelctordata/selector_data_type.dart';
import 'package:vision1/view/screen/select_item_screen.dart';

import '../../../controller/utils_controller/select_input_item_controller.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme_helper.dart';



class SelectItemWidget extends StatefulWidget {
  SelectItemWidget({super.key, required this.selectorDataType});

  final SelectorDataType selectorDataType;

  @override
  State<SelectItemWidget> createState() => _SelectItemWidgetState();
}

class _SelectItemWidgetState extends State<SelectItemWidget> {


  SelectInputItemController controller= Get.put(SelectInputItemController());
  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap: (){
        Get.to(SelectItemScreen(selectorDataType:widget.selectorDataType));
        setState(() {

        });
      },
      child:

      Container(
        margin: getMargin(top: 15,right: 15,left: 15),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getHorizontalSize(12)),
            border: Border.all(color: appTheme.gray300)
        ),
        child: Padding(
          padding: getPadding(left: 16,right: 16,top: 14,bottom: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(controller.getCurrentSelect(widget.selectorDataType),style:controller.theme),

              CustomImageView(
                  imagePath: ImageConstant.imgArrowleft)
            ],
          ),
        ),
      ),





    );

  }
}
