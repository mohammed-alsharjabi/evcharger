import 'package:flutter/material.dart';
import 'package:vision1/core/theme/color.dart';

import '../../../core/text_theme_helper.dart';
import '../../../core/theme_helper.dart';
import '../../../data/model/stationmodel/station_info_model.dart';

class StationInfoWidget extends StatelessWidget {
   StationInfoWidget({super.key,required  this.stationInfo});
  StationInfoModel  stationInfo;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: getPadding(left: 16,right: 16),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getHorizontalSize(12)),
            color: AppColor.gray4),
        child:    Padding(
          padding: getPadding(all: 16),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    stationInfo.name!, overflow: TextOverflow.ellipsis,
                      style: TextThemeHelper.titleLargeBold_1),

                  Text(
                      stationInfo.status!,
                      style: TextThemeHelper
                          .bodymedium16green),

                ],
              ),
              SizedBox(height: getVerticalSize(16),),

              Row(
                children: [
                  Container(
                    width: getSize(73),
                    child: Text("التكلفة : ",
                        overflow: TextOverflow.ellipsis,
                        style: TextThemeHelper.bodymedium16black
                    ),
                  ),
                  SizedBox(width: getHorizontalSize(39),),
                  Text("${stationInfo.price!}\$    بالساعة",
                      textAlign: TextAlign.center, style: TextThemeHelper.bodymedium16black
                  ),

                ],
              ),

              SizedBox(height: getVerticalSize(8),),
              Row(
                children: [
                  Container(
                    width: getSize(73),
                    child: Text("العنوان : ",
                        overflow: TextOverflow.ellipsis,
                        style: TextThemeHelper.bodymedium16black
                    ),
                  ),
                  SizedBox(width: getHorizontalSize(39),),
                  Text(stationInfo.address!,
                      textAlign: TextAlign.center,
                      style: TextThemeHelper.bodymedium16black),

                ],
              )

            ],
          ),
        ),),
    );
  }
}
