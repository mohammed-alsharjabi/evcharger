import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/utils_controller/select_input_item_controller.dart';
import '../../core/assets/image_constant.dart';
import '../../core/custom_image_view.dart';
import '../../core/theme_helper.dart';
import '../../data/datasource/statics/slelctordata/select_model.dart';
import '../../data/datasource/statics/slelctordata/selector_data_type.dart';
import '../widgets/utlis/customappbar.dart';
import '../widgets/utlis/select_item_widget.dart';


class SelectItemScreen extends StatefulWidget {
  const SelectItemScreen({super.key,required this.selectorDataType});
  final SelectorDataType selectorDataType;

  @override
  State<SelectItemScreen> createState() => _SelectBrandScreenState();
}

class _SelectBrandScreenState extends State<SelectItemScreen> {
  SelectInputItemController controller = Get.put(SelectInputItemController());

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
            color: appTheme.white,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: theme.colorScheme.primary,

              appBar: Custom1AppBar(
                  height: getVerticalSize(79),
                  leadingWidth: 42,
                  leading: CustomImageView(
                      height: getSize(24),
                      width: getSize(24),
                      imagePath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 18, top: 29, bottom: 26),
                      onTap: () {
                        onTapArrowleft5();
                      }),
                  centerTitle: true,
                  title: Text(controller.getCurrentSelect(widget.selectorDataType),
    overflow: TextOverflow.ellipsis,
    textAlign: TextAlign.left,
    style: theme.textTheme.headlineMedium!.copyWith(
      fontFamily: "Cairo",
    color: theme.colorScheme.onError.withOpacity(1),),),

                  styleType: Style.bgOutline),


              body: Container(
                    width: double.maxFinite,
                    padding: getPadding(all: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: getVerticalSize(8),),
                          Expanded(
                              child: ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                itemCount: controller.listSelector(widget.selectorDataType).length,
                                itemBuilder: (context, index) {
                                  // SelectModel data = controller.selectBrandSearchModelObj[index];
                                  SelectModel data = controller.listSelector(widget.selectorDataType)[index];
                                  return GestureDetector(
                                    onTap: (){
                                      controller.setBrand(data.itemName);
                                      Get.back();
                                    },
                                    child: Padding(
                                      padding: getPadding(top: 8, bottom: 8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border(bottom: BorderSide(color: appTheme.gray200))),
                                        child: Padding(
                                          padding: getPadding(top: 13, bottom: 13),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [

                                              Padding(
                                                padding: getMarginOrPadding(right: 25,left: 25),
                                                child: Text(
                                                  data.itemName!,
                                                  style: theme.textTheme.bodyLarge!,
                                                ),
                                              ),
                                              CustomImageView(
                                                  imagePath:
                                                  ImageConstant.imgarrowLeft)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ))
                        ])),
              ),
            );
  }
  onTapArrowleft5() {
    Get.back();
  }
}
