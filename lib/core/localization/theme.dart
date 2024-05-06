import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import '../theme/color.dart';

class Themes {



  static final ThemeData themeEnglish = ThemeData(
    fontFamily: "PlayfairDisplay",
    textTheme: const TextTheme(
        headline1: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
        headline2: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
        bodyText1: TextStyle(
            height: 2,
            color: AppColor.gray,
            fontWeight: FontWeight.bold,
            fontSize: 14),
        bodyText2: TextStyle(height: 2, color: AppColor.gray, fontSize: 14)),
    primarySwatch: Colors.blue,
  );

  static final ThemeData themeArabic = ThemeData(
    fontFamily: "Cairo",
    textTheme: const TextTheme(
        headline1: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
        headline2: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
        bodyText1: TextStyle(
            height: 2,
            color: AppColor.gray,
            fontWeight: FontWeight.bold,
            fontSize: 14),
        bodyText2: TextStyle(height: 2, color: AppColor.gray, fontSize: 14)),
    primarySwatch: Colors.blue,
  );



}



class TextThemes {



  static TextTheme textTheme() =>
      const   TextTheme(
        bodyMedium:  TextStyle(
          color: AppColor.backGroundColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        displayMedium:   TextStyle(
          color: AppColor.gray,
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ),
        displaySmall:  TextStyle(
          color: AppColor.gray,
          fontSize: 35,
          fontWeight: FontWeight.w700,
        ),
        headlineLarge:  TextStyle(
          color: AppColor.black,
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium:  TextStyle(
          color: Color(0XFF274292),
          fontSize: 28,
          fontWeight: FontWeight.w700,
        ),
        headlineSmall:  TextStyle(
          color: AppColor.black,
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
        labelMedium:  TextStyle(
          color: AppColor.black,
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        titleLarge:  TextStyle(
          color: AppColor.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        titleMedium:  TextStyle(
          color:  AppColor.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        titleSmall:  TextStyle(
          color: AppColor.backGroundColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),

      );
}




