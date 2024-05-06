import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision1/core/services/services.dart';

import '../../app_rout.dart';
import '../../controller/onboarding_controller.dart';
import '../../core/button_theme_helper.dart';
import '../../core/pref_utils.dart';
import '../../core/text_theme_helper.dart';
import '../../core/theme_helper.dart';
import '../../data/model/onboardingmodel/slidergetyoursm_item_model.dart';
import '../widgets/utlis/custom_elevated_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingScreen> {
  OnboardingController controller = Get.put(OnboardingController());

  @override
  void initState() {
    setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        closeApp();
        return true;
      },
      child: SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: GetBuilder<OnboardingController>(
              init: OnboardingController(),
              builder: (controller) => Stack(
                children: [
                  PageView.builder(
                    controller: controller.pageController,
                    itemCount: controller.onboardingData.length,
                    onPageChanged: (value) {
                      controller.setCurrentPage(value);
                    },
                    itemBuilder: (context, index) {
                      SlidergetyoursmItemModel data =
                      controller.onboardingData[index];

                      return Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(data.image!), fit: BoxFit.fill)),
                        child: Padding(
                          padding: getPadding(bottom: 200),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              //title
                              Container(
                                width: getSize(342),
                                child: Text(
                                  data.title!,
                                  maxLines: 2,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineMedium,
                                ),
                              ),

                              //subtitle
                              Container(
                                width: getHorizontalSize(280,),
                                margin: getMargin(top: 23,),
                                child: Text(
                                  data.subTitle!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  Padding(
                    padding: getPadding(bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        //dot
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                controller.onboardingData.length, (index) {
                              return AnimatedContainer(
                                margin: getMargin(left: 4, right: 4),
                                duration:
                                const Duration(milliseconds: 300),
                                height: getSize(8),
                                width: getSize(8),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                    (index == controller.currentPage)
                                        ? appTheme.black
                                        : appTheme.black.withOpacity(0.40)),
                              );
                            })),


                        //btn
                        CustomElevatedButton(
                            text: controller.currentPage ==
                                controller.onboardingData.length - 1
                                ? "Get started"
                                : "Next",
                            margin: getMargin(left: 16, top:  controller.currentPage ==
                                controller.onboardingData.length - 1
                                ?82:42, right: 16),
                            buttonStyle: ButtonThemeHelper.fillGreen600.copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(double.maxFinite, getVerticalSize(54)))),
                            buttonTextStyle: TextThemeHelper.titleMediumPrimary,
                            onTap: controller.currentPage ==
                                controller.onboardingData.length - 1
                                ? () {
                              MyServices.setIsIntro(false);
                              Get.toNamed(
                                AppRoutes.login,
                              );
                            }
                                : () {
                              controller.pageController.nextPage(
                                  duration: const Duration(
                                      milliseconds: 100),
                                  curve: Curves.bounceIn);
                            }

                        ),

                        controller.currentPage ==
                            controller.onboardingData.length - 1
                            ?  const SizedBox():

                            //btn Skip
                        GestureDetector(
                            onTap: () {
                              MyServices.setIsIntro(false);
                              onTapTxtSkip();
                            },
                            child: Padding(
                                padding: getPadding(top: 19, bottom: 5),
                                child: Text("Skip",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall)))

                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardingScreen,
    );
  }

  onTapTxtSkip() {
    Get.toNamed(
      AppRoutes.login,
    );
  }
}







//--------------------------widget-------------------------//
class SlidergetyoursmItemWidget extends StatelessWidget {
  SlidergetyoursmItemWidget(
      this.slidergetyoursmItemModelObj, {
        Key? key,
      }) : super(
    key: key,
  );

  SlidergetyoursmItemModel slidergetyoursmItemModelObj;

  var controller = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: getHorizontalSize(
            294,
          ),
          child: Text(
            "msg_get_your_smart_life".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineMedium,
          ),
        ),
        Container(
          width: getHorizontalSize(280,),
          margin: getMargin(top: 23,),
          child: Text(
            "msg_the_future_of_transportation".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
