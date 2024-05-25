import 'package:flutter/material.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/view/widgets/utlis/simple_get_data.dart';

import '../../core/assets/image_constant.dart';
import '../../core/custom_image_view.dart';
import '../../core/theme_helper.dart';
import '../widgets/utlis/customappbar.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.backGroundColor,

appBar: Custom1AppBar(
    height: 40,
    leading: CustomImageView(
        height: getSize(24),
        width: getSize(24),
        color: AppColor.primary,
        imagePath: ImageConstant.imgArrowleft,
        onTap: () {

        }),
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(" سياسة الخصوصية",
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.headlineMedium!.copyWith(
          fontFamily: "Cairo",
          fontSize: 18,
          color: theme.colorScheme.onError.withOpacity(1),),),
    ),
    styleType: Style.bgOutline),

      body: Container(
        padding:const  EdgeInsets.all(14),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics:const  BouncingScrollPhysics(),
          children: [

           Column(
             children: list,)
          ],
        ),
      ),

    );
  }

}

List<TermsItem> list=List.generate(descTest.length, (index) => TermsItem(title: terms[index],description: descTest[index],));

List descTest=[
"تطبيق شحن الطاقة المستدامة هو تطبيق مبتكر يوفر خدمات شحن السيارات والمنازل باستخدام الطاقة المتجددة. يهدف التطبيق إلى تشجيع استخدام الطاقة المتجددة والمساهمة في الحد من انبعاثات ثاني أكسيد الكربون، كما يوفر فرصة ممتازة لرجال الأعمال في مجال الطاقة المتجددة من خلال إنشاء وإدارة محطات الشحن",

"التطبيق يوفر العديد من الخدمات المبتكرة، حيث يقدم خدمة البحث عن أقرب محطة شحن متوفرة وعرض أسعار الشحن للمستخدم، بالإضافة إلى توفير خيارات الدفع السهلة والمريحة من خلال التطبيق نفسه. كما يوفر التطبيق واجهة سهلة الاستخدام للتواصل مع أصحاب المحطات والحصول على مساعدة في حال توفر أي صعوبات",

"التطبيق يوفر العديد من الخدمات المبتكرة، حيث يقدم خدمة البحث عن أقرب محطة شحن متوفرة وعرض أسعار الشحن للمستخدم، بالإضافة إلى توفير خيارات الدفع السهلة والمريحة من خلال التطبيق نفسه. كما يوفر التطبيق واجهة سهلة الاستخدام للتواصل مع أصحاب المحطات والحصول على مساعدة في حال توفر أي صعوبات",

  "تطبيق شحن الطاقة المستدامة هو تطبيق مبتكر يوفر خدمات شحن السيارات والمنازل باستخدام الطاقة المتجددة. يهدف التطبيق إلى تشجيع استخدام الطاقة المتجددة والمساهمة في الحد من انبعاثات ثاني أكسيد الكربون، كما يوفر فرصة ممتازة لرجال الأعمال في مجال الطاقة المتجددة من خلال إنشاء وإدارة محطات الشحن",

];

List terms=[
  "تعريف بالتطبيق  ",
  "من هم  تطبيق المستخدمين",
  "تسهيلات  على اصحاب السيارات",
  "تعريف بالتطبيق  ",


];

