import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/assets/image_constant.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/core/theme_helper.dart';
import 'package:vision1/view/widgets/booking/bottom_sheet_amount.dart';
import 'package:vision1/view/widgets/utlis/customappbar.dart';

import '../../app_rout.dart';
import '../../controller/my_booking_controller.dart';
import '../../controller/station/station_booked_controller.dart';
import '../../core/button_theme_helper.dart';
import '../../core/custom_image_view.dart';
import '../../core/text_theme_helper.dart';
import '../widgets/booking/item_book_screen.dart';
import '../widgets/utlis/custom_dropdown_button.dart';
import '../widgets/utlis/custom_elevated_button.dart';


class AddBookingScreen extends  StatefulWidget {
   AddBookingScreen({super.key});

  @override
  State<AddBookingScreen> createState() => _AddBookingScreenState();
}

class _AddBookingScreenState extends State<AddBookingScreen> {
   StationBookedController controller= Get.put(StationBookedController());

  @override
  Widget build(BuildContext context) {
    Get.put(StationBookedController());

    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backGroundColor,


        body:GetBuilder<StationBookedController>(builder: (controller) =>
            Container(
              height: MediaQuery.of(context).size.height,
              padding: getPadding(all: 5),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics:const BouncingScrollPhysics(),
                children: [
const SizedBox(height: 70,),
                  Custom1AppBar(
                      height: 60,
                      leading: CustomImageView(
                          height: getSize(24),
                          width: getSize(24),
                          imagePath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 18, top: 29, bottom: 26),
                          onTap: () {

                          }),
                      centerTitle: true,
                      title: Text("تأكيد الحجز",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.headlineMedium!.copyWith(
                          fontFamily: "Cairo",
                          color: theme.colorScheme.onError.withOpacity(1),),),
                      styleType: Style.bgOutline),
                  const SizedBox(height: 10,),

                  ItemInputSelect(title:"نوع الموصل", onTap: controller.setVehicleType,item: controller.connectPort,),
                  ItemInputSelect(title:"نوع المركبة",onTap: controller.setWheeler,item: controller.wheeler,),
                  ItemInputSelect(title:"تاريخ الحجز",onTap: controller.setDate,item: controller.date,),
                  ItemInputSelect(title:"وقت الشحن",onTap: controller.setTime,item: controller.time),
                  controller.setChargeType(),
                  ItemInputSelect(title:"مبلغ الشحن",onTap: (){
                    Get.bottomSheet(BottomSheetAmount());
                  }),

                ],
              ),
            ),
        ),

        bottomNavigationBar:  Padding(
          padding:const  EdgeInsets.symmetric(vertical: 35,horizontal: 18),
          child:
          CustomElevatedButton(
              text:
              "تأكيد  الحجز",
              buttonStyle: ButtonThemeHelper
                  .fillGreen600TL12
                  .copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                      double.infinity,
                      getVerticalSize(54)))),
              buttonTextStyle: TextThemeHelper.titleMediumPrimary,
              onTap: () {

                  controller.checkData()?
                Get.toNamed(AppRoutes.reviewBooking):
                  Get.snackbar("title", "message");


              }),
        ),
      ),
    );
  }




}

