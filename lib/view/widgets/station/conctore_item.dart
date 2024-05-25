import 'package:flutter/material.dart';
import 'package:vision1/data/model/stationmodel/conctore_model.dart';

import '../../../core/custom_image_view.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme/color.dart';
import '../../../core/theme_helper.dart';

class ConnctorItem extends StatelessWidget {
  ConnctorItem({super.key,required this.conctoreModel, this.onTap});
  ConnectorModel conctoreModel;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:
        onTap,
      child: Container(
        width: 110,

        margin: getMargin(right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
            color: AppColor.gray4),
        child: Padding(
          padding:getPadding(all: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: conctoreModel.icon,
                color: AppColor.green1,
              ),

              Text(conctoreModel.name!,
                  style: TextThemeHelper.titleboldblack),

              Text(conctoreModel.power!,
                  style: TextThemeHelper.titleMediumGray600
              ),

              Container(
                width: double.infinity,
                height: 30,
                decoration: const BoxDecoration(
                    color: AppColor.green1,
                    borderRadius:  BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10))
                ),
                child:  Center(
                  child: Text("متاحة    2/6 ",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14,color: appTheme.white),),
                ),
              )

            ],
          ),

        ),
      ),
    );

  }


 static List<ConnctorItem> conctoreItemList=List.generate(ConnectorModel.conctore_list.length,
          (index) => ConnctorItem(conctoreModel:ConnectorModel.conctore_list[index] ));
}
