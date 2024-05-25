import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/button_theme_helper.dart';
import '../../../core/text_theme_helper.dart';
import '../../../core/theme/color.dart';
import '../../../core/theme_helper.dart';
import '../utlis/custom_elevated_button.dart';





class BottomSheetAmount extends StatefulWidget {
   BottomSheetAmount({super.key,this.onChanged});
  void Function(double)? onChanged;

  @override
  State<BottomSheetAmount> createState() => _BottomSheetAmount();
}

class _BottomSheetAmount extends State<BottomSheetAmount> {
  double _size = 50.0;
  double amount = 50.0;


  @override
  Widget build(BuildContext context) {


    return  Container(
        margin:const  EdgeInsets.symmetric(horizontal: 0,vertical: 0),
        padding:const  EdgeInsets.symmetric(horizontal: 10,vertical: 30),
        height: MediaQuery.of(context).size.height/2.3,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
          color: AppColor.gray10,

        ),
        child: Padding(
            padding: getPadding(left: 5,right: 5,top: 0,bottom: 0),
            child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child:   Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("المبلغ",textAlign: TextAlign.center,style: TextStyle(color: AppColor.black,fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const Divider(),
                  const Center(
                    child:   Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text("ضع مبلغ الشحن الذي تريد",
                          softWrap: true,
                          textAlign: TextAlign.center,style:
                          TextStyle(wordSpacing: 4,color: AppColor.black,fontSize: 14,fontWeight: FontWeight.bold)),
                    ),
                  ),

                  const  SizedBox(height: 3,),

                  Container(
                      padding:const  EdgeInsets.symmetric(horizontal: 10,vertical: 9),
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(getHorizontalSize(12)),

                          boxShadow:const  [
                            BoxShadow(
                                color: AppColor.gray4,
                                offset: Offset(1, 1),
                                blurRadius: 4,
                                spreadRadius: 2

                            )
                          ]
                      ),
                      child:  Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Slider(
                            value: _size,
                            activeColor: AppColor.green1,
                            inactiveColor: Theme.of(context).primaryColor.withOpacity(0.3),
                            min: 0.0,
                            max: 500.0,
                            divisions: 100,
                            onChanged: (double value) {
                              setState(() {
                                _size = value;
                                // widget.onChanged!.call(value);
                              });
                            },
                          ),

                          const  SizedBox(height: 5,),
                          Text("$_size\$",
                              style:const TextStyle(color: AppColor.green1,fontWeight: FontWeight.bold,fontSize: 16,)),
                          const  SizedBox(height: 5,),


                        ],
                      )),
                  const SizedBox(height: 30,),
                  CustomElevatedButton(
                      text: "شحن فل",
                      buttonStyle: ButtonThemeHelper.fillwhiteborder12
                          .copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              double.infinity,
                              getVerticalSize(54)))),
                      buttonTextStyle: TextThemeHelper.titleMediumGreen600,
                      onTap: () {
                        Get.back();
                      }),



                ])));

  }
}
