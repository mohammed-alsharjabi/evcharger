import 'package:get/get.dart';

import '../../../../app_rout.dart';
import '../../../../core/assets/image_constant.dart';
import '../../../../core/button_theme_helper.dart';
import '../../../../core/custom_image_view.dart';
import '../../../../core/text_theme_helper.dart';
import '../../../../core/theme_helper.dart';
import '../../../widgets/utlis/custom_elevated_button.dart';
import '../controller/favorite_list_controller.dart';
import '../models/listrectangle44_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle44ItemWidget extends StatelessWidget {
  Listrectangle44ItemWidget(this.listrectangle44ItemModelObj, {
    Key? key,
    this.onTapStation,
  }) : super(
    key: key,
  );

  Listrectangle44ItemModel listrectangle44ItemModelObj;

  FavoriteListController favoriteListController = Get.put(
      FavoriteListController());

  VoidCallback? onTapStation;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteListController>(
        init: FavoriteListController(),
        builder: (controller) =>
            Padding(
              padding: getPadding(
                  top: 8,bottom: 8
              ),
              child: GestureDetector(
                onTap: () {
                  // onTapStation?.call();
                },
                child: Container(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                              children: [
                                Text(
                                  listrectangle44ItemModelObj.title!,
                                  overflow: TextOverflow
                                      .ellipsis,
                                  textAlign:
                                  TextAlign.left,
                                  style: theme.textTheme
                                      .titleMedium,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 4,
                                  ),
                                  child: Text(
                                    listrectangle44ItemModelObj.address!,
                                    overflow: TextOverflow
                                        .ellipsis,
                                    textAlign:
                                    TextAlign.left,
                                    style: theme.textTheme
                                        .bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                favoriteListController
                                    .setLikePos(
                                    listrectangle44ItemModelObj);
                              },
                              child: Container(
                                height: getSize(28),
                                width: getSize(28),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        offset:
                                        Offset(0, 4),
                                        blurRadius: 8,
                                        color: appTheme
                                            .black
                                            .withOpacity(
                                            0.12))
                                  ],
                                  shape: BoxShape.circle,
                                  color: appTheme.white,
                                ),
                                child: Padding(
                                  padding:
                                  getPadding(all: 6),
                                  child: CustomImageView(
                                    imagePath: !listrectangle44ItemModelObj
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
                        SizedBox(height: getHorizontalSize(16),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            station_charger_formate(
                                ImageConstant.imgPlug3rd, "Charger A",
                                "AC type-2"),
                            SizedBox(width: getHorizontalSize(16),),
                            station_charger_formate(
                                ImageConstant.imgPlug4th, "Charger B",
                                "CSS-2"),
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
                                    "عرض االمحطة",

                                    buttonStyle: ButtonThemeHelper
                                        .fillwhiteborder8
                                        .copyWith(
                                        fixedSize: MaterialStateProperty.all<
                                            Size>(Size(
                                            double.infinity,
                                            getVerticalSize(
                                                40)))),
                                    buttonTextStyle:
                                    TextThemeHelper
                                        .titleSmallBoldGreen,
                                    onTap: () {
                                      Get.toNamed(
                                          AppRoutes.stationScreen);
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
                                        fixedSize: MaterialStateProperty.all<
                                            Size>(Size(
                                            double.infinity,
                                            getVerticalSize(
                                                40)))),
                                    buttonTextStyle:
                                    TextThemeHelper
                                        .titleSmallBoldWhite,
                                    onTap: () {
                                      Get.toNamed(AppRoutes.bookingScreen);
                                      // onTapLogout();
                                    }),
                              )
                            ])
                      ],
                    ),
                  ),
                ),
              ),
            ),);
  }
}

// ignore: non_constant_identifier_names
Widget station_charger_formate(icon, chargerType, powerType) {
  return Expanded(child: Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getHorizontalSize(12)),
        color: appTheme.gray50),
    child: Padding(
      padding: getPadding(top: 8, bottom: 8, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: icon,
              ),
              SizedBox(width: getHorizontalSize(8),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chargerType, style: TextThemeHelper.bodymedium16black400,),
                  SizedBox(height: getVerticalSize(4),),
                  Text(powerType, style: TextThemeHelper.bodymedium13black400,),

                ],
              )
            ],
          ),
          SizedBox(height: getVerticalSize(4),),
          Text("Capacity : 60KW", style: TextThemeHelper.bodymedium13black400,),
        ],
      ),
    ),
  ));
}



// ignore: must_be_immutable
class FavouriteItemListFormate extends StatefulWidget {

  FavouriteItemListFormate(this.listrectangle44ItemModelObj, {
    Key? key,
    this.onTapStation,
  }) : super(
    key: key,
  );

  Listrectangle44ItemModel listrectangle44ItemModelObj;

  FavoriteListController favoriteListController = Get.put(
      FavoriteListController());

  VoidCallback? onTapStation;

  @override
  State<FavouriteItemListFormate> createState() => _FavouriteItemListFormateState();
}

class _FavouriteItemListFormateState extends State<FavouriteItemListFormate> {
  FavoriteListController favoriteListController = Get.put(
      FavoriteListController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteListController>(
      init: FavoriteListController(),
      builder:(controller) =>  Padding(
        padding:getPadding(top: 8,bottom: 8),
        child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                color: appTheme.gray50),
            child: Padding(
              padding: getPadding(all: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: getSize(102),
                        width: getSize(102),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(getHorizontalSize(8)),
                        image:DecorationImage(image: AssetImage(widget.listrectangle44ItemModelObj.image!,),fit: BoxFit.fill) ),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
          Padding(
            padding:getPadding(top: 6,right: 6),
            child: GestureDetector(
              onTap: (){
                controller
                    .setLikePos(
                    widget.listrectangle44ItemModelObj);
              },
              child: Container(
        height:getSize(28),
        width: getSize(28),
        decoration: BoxDecoration(shape: BoxShape.circle,color: appTheme.black.withOpacity(0.60)),
      child: Padding(
        padding:getPadding(all: 6),
        child: CustomImageView(
              height:getSize(28),
              width: getSize(28),
              imagePath:!widget.listrectangle44ItemModelObj
                  .isFavorite!?ImageConstant.imgLikjeEmpty: ImageConstant.imgLikeFill,
        ),
      ),
      ),
            ),
          ),
  ],
),
                      ),
                      SizedBox(width: getHorizontalSize(16),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.listrectangle44ItemModelObj.title!,style:TextThemeHelper.bodyLargeOpenSansBlack700,),
                          SizedBox(height: getVerticalSize(4),),
                          Text(widget.listrectangle44ItemModelObj.address!,style:TextThemeHelper.bodymedium13black400,),
                          SizedBox(height: getVerticalSize(8),),
                          Row(
                            children: [
                              CustomImageView(
                                height: getSize(16),
                                width: getSize(16),
                                imagePath: ImageConstant.imgLocationIconNew,
                              ),
                              SizedBox(width: getHorizontalSize(4),),
                              Text("4.5 km",style:TextThemeHelper.bodymedium14black)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding:getPadding(right: 8),
                    child: Container(
                      height: getSize(40),
                      width: getSize(40),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appTheme.buttonColor
                      ),
                      child: Padding(
                        padding:getPadding(all: 9),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgDirectionIconArrow,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))),
    );
  }
}

