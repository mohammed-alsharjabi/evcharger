
import '../../../core/assets/image_constant.dart';
import 'slidergetyoursm_item_model.dart';

class OnboardingModel {
  // Rx<List<SlidergetyoursmItemModel>> slidergetyoursmItemList =
  //     Rx(List.generate(1, (index) => SlidergetyoursmItemModel()));

  static List<SlidergetyoursmItemModel> slidergetyoursmItemList(){
    return [
      SlidergetyoursmItemModel(ImageConstant.imgOnboarding1st,"Get your smart life with smart bike","The future of transportation is electric, and we're here to help you get there."),
      SlidergetyoursmItemModel(ImageConstant.imgOnboarding2nd,"The perfect solution for long road trips.","The future of transportation is electric, and we're here to help you get there."),
      SlidergetyoursmItemModel(ImageConstant.imgOnboarding3rd,"We're here to help you power your journey.","The future of transportation is electric, and we're here to help you get there."),
    ];
  }
}
