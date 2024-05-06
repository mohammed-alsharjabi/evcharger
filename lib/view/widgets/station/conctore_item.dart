import 'package:flutter/material.dart';
import 'package:vision1/data/model/stationmodel/conctore_model.dart';

import '../../../core/custom_image_view.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme_helper.dart';

class ConnctorItem extends StatelessWidget {
  ConnctorItem({super.key,required this.conctoreModel});
  ConnectorModel conctoreModel;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 130,
      height: 180,
      margin: getMargin(right: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(12)),
          color: appTheme.gray50),
      child: Padding(
        padding:getPadding(all: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: conctoreModel.icon,
            ),

            Text(conctoreModel.name!,
                overflow: TextOverflow.ellipsis,
                style: TextThemeHelper.titleboldblack),
            SizedBox(height: getVerticalSize(1),),
            Text(conctoreModel.power!,
                overflow: TextOverflow
                    .ellipsis,
                style: TextThemeHelper.bodymedium16gray400
            ),
            const SizedBox(height: 8,),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: appTheme.green600,
                  borderRadius:const  BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10))
              ),
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Text("متاحة    2/6 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: appTheme.white),),
              ),
            )

          ],
        ),

      ),
    );

  }


 static List<ConnctorItem> conctoreItemList=List.generate(ConnectorModel.conctore_list.length,
          (index) => ConnctorItem(conctoreModel:ConnectorModel.conctore_list[index] ));
}
