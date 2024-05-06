import 'package:get/get.dart';
import '../../../app_rout.dart';
import '../../../core/assets/image_constant.dart';
import '../../../core/button_theme_helper.dart';
import '../../../core/custom_image_view.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme_helper.dart';
import '../../widgets/utlis/custom_elevated_button.dart';
import '../favorite_list_page/controller/favorite_list_controller.dart';
import '../favorite_list_page/models/listrectangle44_item_model.dart';
import 'controller/charger_page_controller.dart';
import 'package:flutter/material.dart';

class ChargerPage extends StatefulWidget {
  const ChargerPage({super.key});

  @override
  State<ChargerPage> createState() => _ChargerPageState();
}

class _ChargerPageState extends State<ChargerPage> {
  ChargerPageController controller = Get.put(ChargerPageController());
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgMapBg),
                fit: BoxFit.fill)),
        child: GetBuilder<FavoriteListController>(
          init: FavoriteListController(),
          builder: (favoriteListController) => Padding(
            padding: getPadding(top: 30, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: getPadding(left: 16, right: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          getHorizontalSize(16)),
                      color: appTheme.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            color: appTheme.black.withOpacity(0.06))
                      ],
                    ),
                    child: CustomSearchView(
                        controller: controller.searchController,
                        hintText: "lbl_search_location".tr,
                        hintStyle: TextThemeHelper.bodyLargeGray600,
                        alignment: Alignment.topLeft,
                        prefix: Container(
                            margin: getMargin(
                                left: 17,
                                top: 15,
                                right: 13,
                                bottom: 15),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgSearch)),
                        prefixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(54)),
                        suffix: Padding(
                            padding: EdgeInsets.only(
                                right: getHorizontalSize(15)),
                            child: IconButton(
                                onPressed: () {
                                  controller.searchController.clear();
                                },
                                icon: Icon(Icons.clear,
                                    color: Colors.grey.shade600))),
                        filled: true,
                        fillColor: theme.colorScheme.primary,
                        contentPadding: getPadding(
                            top: 17, right: 54, bottom: 17)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: CustomImageView(
                      imagePath: ImageConstant
                          .imgChargingPointLocationeIcon,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: getPadding(right: 16, bottom: 32),
                        child: GestureDetector(
                          onTap: () {
                            // Get.toNamed(AppRoutes.locationMap2Screen);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(12)),
                                color: appTheme.buttonColor),
                            child: Padding(
                              padding: getPadding(all: 15),
                              child: CustomImageView(
                                  imagePath:
                                  ImageConstant.imgLocationIcon),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(

                      height: getVerticalSize(167),
                      child: ListView.separated(
                        padding:
                        getPadding(left: 16, top: 0, right: 16),
                        scrollDirection: Axis.horizontal,
                        itemCount: favoriteListController
                            .favoriteListModelObj.length,
                        itemBuilder: (context, index) {
                          Listrectangle44ItemModel model =
                          favoriteListController
                              .favoriteListModelObj[index];
                          return Container(
                            width: getSize(383),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(12)),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 4),
                                      blurRadius: 8,
                                      color: appTheme.black
                                          .withOpacity(0.12))
                                ],
                                color: appTheme.white),
                            child: Padding(
                              padding: getPadding(all: 16),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        model.title!,
                                        overflow: TextOverflow
                                            .ellipsis,
                                        textAlign:
                                        TextAlign.left,
                                        style: theme.textTheme
                                            .titleMedium,
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          favoriteListController
                                              .setLikePos(
                                              model);
                                        },
                                        child: Container(
                                          height: getSize(28),
                                          width: getSize(28),
                                          decoration: BoxDecoration(

                                            shape: BoxShape.circle,
                                            color: appTheme.gray50,
                                          ),
                                          child: Padding(
                                            padding:
                                            getPadding(all: 6),
                                            child: CustomImageView(
                                              imagePath: !model
                                                  .isFavorite!
                                                  ? ImageConstant
                                                  .imgGreenHeartEmpty
                                                  : ImageConstant
                                                  .imgGreenHeartFill,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                  "Rating",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                    TextAlign.left,
                                                    style: TextThemeHelper.bodyMedium14width600,

                                                  ),
                                                  Text(
                                                   "(${model.noOfRating})",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                    TextAlign.left,
                                                    style: TextThemeHelper.bodyMedium14width400,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: getVerticalSize(4),),
                                              Row(
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant.imgRatingImage,
                                                  ),
                                                  SizedBox(width: getHorizontalSize(8),),
                                                  Text(
                                                    "4.8",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                    TextAlign.left,
                                                    style: TextThemeHelper.bodyMedium14width400,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: getHorizontalSize(16),),
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Ev’s charged",
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                textAlign:
                                                TextAlign.left,
                                                style: TextThemeHelper.bodyMedium14width600,

                                              ),
                                              SizedBox(height: getVerticalSize(4),),
                                              Text(
                                                "102",
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                textAlign:
                                                TextAlign.left,
                                                style: TextThemeHelper.bodyMedium14width400,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: getHorizontalSize(16),),
                                  Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Expanded(
                                          child: CustomElevatedButton(
                                              text:
                                              "View station",

                                              buttonStyle: ButtonThemeHelper
                                                  .fillwhiteborder8
                                                  .copyWith(
                                                  fixedSize: MaterialStateProperty.all<Size>(Size(
                                                      double.infinity,
                                                      getVerticalSize(
                                                          40)))),
                                              buttonTextStyle:
                                              TextThemeHelper
                                                  .titleSmallBoldGreen,
                                              onTap: () {
                                                Get.toNamed(AppRoutes.stationScreen);
                                                // onTapLogout();
                                              }),
                                        ),
                                        SizedBox(width: getHorizontalSize(16),),
                                        Expanded(
                                          child: CustomElevatedButton(
                                              text:
                                              "Book Charger",
                                              buttonStyle: ButtonThemeHelper
                                                  .fillGreen600TL8
                                                  .copyWith(
                                                  fixedSize: MaterialStateProperty.all<Size>(Size(
                                                      double.infinity,
                                                      getVerticalSize(
                                                          40)))),
                                              buttonTextStyle:
                                              TextThemeHelper
                                                  .titleSmallBoldWhite,
                                              onTap: () {
                                                Get.toNamed(AppRoutes.addVehicleDetailsScreen);
                                                // onTapLogout();
                                              }),
                                        )
                                      ])
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder:
                            (BuildContext context, int index) {
                          return SizedBox(width: getVerticalSize(16),);
                        },
                      ),
                    )


                  ],
                ),
              ],
            ),
          ),
        ));
  }
}










// ignore: must_be_immutable
class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.fillColor,
    this.filled = false,
    this.contentPadding,
    this.defaultBorderDecoration,
    this.enabledBorderDecoration,
    this.focusedBorderDecoration,
    this.disabledBorderDecoration,
    this.validator,
    this.onTap,
  }) : super(
    key: key,
  );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final Color? fillColor;

  final bool? filled;

  final EdgeInsets? contentPadding;

  final InputBorder? defaultBorderDecoration;

  final InputBorder? enabledBorderDecoration;

  final InputBorder? focusedBorderDecoration;

  final InputBorder? disabledBorderDecoration;
  Function? onTap = (){};

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: searchViewWidget,
    )
        : searchViewWidget;
  }

  Widget get searchViewWidget => Container(
    width: width ?? double.maxFinite,
    margin: margin,
    child: TextFormField(
      onTap:(){onTap!();},
      controller: controller,
      focusNode: focusNode,
      autofocus: autofocus!,
      style: textStyle,
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
      decoration: decoration,
      validator: validator,
    ),
  );
  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: hintStyle,
    prefixIcon: prefix,
    prefixIconConstraints: prefixConstraints,
    // suffixIcon: suffix ??
    //     Padding(
    //       padding: EdgeInsets.only(
    //         right: getHorizontalSize(
    //           15.00,
    //         ),
    //       ),
    //       child: IconButton(
    //         onPressed: () => controller!.clear(),
    //         icon: Icon(
    //           Icons.clear,
    //           color: Colors.grey.shade600,
    //         ),
    //       ),
    //     ),
    suffixIconConstraints: suffixConstraints,
    fillColor: fillColor,
    filled: filled,
    isDense: true,
    contentPadding: contentPadding,
    border: defaultBorderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          borderSide: BorderSide.none,
        ),
    enabledBorder: enabledBorderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          borderSide: BorderSide.none,
        ),
    focusedBorder: focusedBorderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          borderSide: BorderSide.none,
        ),
    disabledBorder: disabledBorderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          borderSide: BorderSide.none,
        ),
  );
}

/// Extension on [CustomSearchView] to facilitate inclusion of all types of border style etc
extension SearchViewStyleHelper on CustomSearchView {
  static OutlineInputBorder get fillGray50 => OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      getHorizontalSize(
        16.00,
      ),
    ),
    borderSide: BorderSide.none,
  );
}
