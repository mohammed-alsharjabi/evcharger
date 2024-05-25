import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/app_rout.dart';
import 'package:vision1/controller/utils_controller/select_input_item_controller.dart';
import 'package:vision1/core/functions/alertexitapp.dart';
import 'package:vision1/core/functions/validinput.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/data/datasource/statics/slelctordata/selector_data_type.dart';
import 'package:vision1/view/widgets/utlis/customtxtfield.dart';
import 'package:vision1/view/widgets/utlis/sure_bottomsheet.dart';

import '../../controller/vehicle_controller.dart';
import '../../core/assets/image_constant.dart';
import '../../core/button_theme_helper.dart';
import '../../core/custom_image_view.dart';
import '../../core/text_theme_helper.dart';
import '../../core/theme_helper.dart';
import '../widgets/utlis/custom_elevated_button.dart';
import '../widgets/utlis/customappbar.dart';
import '../widgets/utlis/select_item_widget.dart';


class AddVehicleDetailsScreen extends StatefulWidget {
  const AddVehicleDetailsScreen({super.key});

  @override
  State<AddVehicleDetailsScreen> createState() => _AddVehicleDetailsScreenState();
}

class _AddVehicleDetailsScreenState extends State<AddVehicleDetailsScreen> {
TextEditingController timeController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    SelectInputItemController controller=  Get.put(SelectInputItemController());
    VehicleControllerImp controller2=  Get.put(VehicleControllerImp());
    return
      Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColor.backGroundColor,
          appBar: Custom1AppBar(
              height: getVerticalSize(79),
              leadingWidth: 42,
              leading: CustomImageView(
                  height: getSize(24),
                  width: getSize(24),
                  imagePath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 18, top: 29, bottom: 26),
                  onTap: () {

                  }),
              centerTitle: true,
              title: Text(
                "ادخل بيانات السيارة",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.headlineMedium!.copyWith(
                  fontFamily: "Cairo",
                  color: theme.colorScheme.onError.withOpacity(1),),),

              styleType: Style.bgOutline),


          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectItemWidget(selectorDataType: SelectorDataType.brand),
              SelectItemWidget(selectorDataType: SelectorDataType.model),
              SelectItemWidget(selectorDataType: SelectorDataType.chargePort),
              SelectItemWidget(selectorDataType: SelectorDataType.chargeType),
              SelectItemWidget(selectorDataType: SelectorDataType.countWheeler),
              Padding(
                padding: const EdgeInsets.only(top:15),
                child: CustomInputText(
                    mycontroller: timeController,
                    hinttext: "وقت التعبئة ", inputType: TextInputType.number,iconData: Icons.access_time_sharp,
                    valid: (val){
                      return validInput(val!, 2, 4, "phone");
                    }, isNumber: true),
              ),
            ],

          ),



          bottomNavigationBar: CustomElevatedButton(
              text: "اضافة سيارة ",
              margin: getMargin(left: 16, right: 16, bottom: 40),
              buttonStyle: ButtonThemeHelper.fillGreen600.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size(double.maxFinite, getVerticalSize(54)))),
              buttonTextStyle: TextThemeHelper.titleMediumPrimary,
              onTap: () {
                String brand=controller.currentBrand;
                String model=controller.currentModel;
                String chargePort=controller.currentChargePort;
                String chargeType=controller.currentChargeType;
                String wheeler=controller.currentWheeler;
                String time=timeController.text;
                // bool flag=    vehicleController.checkData(brand, model, chargePort, chargeType, wheeler, time);
                //
                //        if(flag)
                //          {
                //            VehicleModel    vehicleModel=  VehicleModel(vehicleModel: model,
                //              vehicleBrand: brand,
                //              timeOfFullCharge: time,
                //            chargeType: chargeType,
                //              chargePort: chargePort,
                //              vehicleWheeler: wheeler,);
                //            vehicleController.add(vehicleModel);
                //          }

                Future.delayed(const Duration(milliseconds: 200), () =>
                    showMyDialog(context: context,title: "نجحت العملية ", subtitle: "تمت اضافة السيارة الى القائمة بنجاج ",
                        icon: ImageConstant.imgFavorite,onConfirm: (){Get.offNamed(AppRoutes.vehicleDetailsScreen);}));
                // Get.offAllNamed(AppRoutes.vehicleDetailsScreen);
              })


      );
  }

}

//
// Future<bool> buli(){
//   Get.bottomSheet(SureBottomsheet(title: "العودة", msg: "الى البروفايل", onTap: (){
//   }));
// Get.offNamed(AppRoutes.profileScreen);
//   return Future.value(true);
// }