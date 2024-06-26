import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vision1/core/pref_utils.dart';




// ignore: deprecated_member_use
Size size = WidgetsBinding.instance.window.physicalSize /
    // ignore: deprecated_member_use
    WidgetsBinding.instance.window.devicePixelRatio;

const num FIGMA_DESIGN_WIDTH = 428;
const num FIGMA_DESIGN_HEIGHT = 926;
const num FIGMA_DESIGN_STATUS_BAR = 47;

///This method is used to get device viewport width.
get width {
  return size.width;
}

///This method is used to get device viewport height.
get height {
  num statusBar =
  // ignore: deprecated_member_use
  MediaQueryData.fromWindow(WidgetsBinding.instance.window).viewPadding.top;
  // ignore: deprecated_member_use
  num bottomBar = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
      .viewPadding
      .bottom;
  num screenHeight = size.height - statusBar - bottomBar;
  return screenHeight;
}

///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getHorizontalSize(double px) {
  return ((px * width) / FIGMA_DESIGN_WIDTH);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize(double px) {
  return ((px * height) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR));
}

///This method is used to set smallest px in image height and width
double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

double getFontSize(double px) {
  return getSize(px);
}

EdgeInsets getPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

///This method is used to set margin responsively
EdgeInsets getMargin({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

///This method is used to get padding or margin responsively
EdgeInsets getMarginOrPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = all;
    top = all;
    right = all;
    bottom = all;
  }
  return EdgeInsets.only(
    left: getHorizontalSize(
      left ?? 0,
    ),
    top: getVerticalSize(
      top ?? 0,
    ),
    right: getHorizontalSize(
      right ?? 0,
    ),
    bottom: getVerticalSize(
      bottom ?? 0,
    ),
  );
}


class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.green600,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.blueGray100,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: colorScheme.onError.withOpacity(1),
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onError.withOpacity(1),
          fontSize: getFontSize(
            28,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onError.withOpacity(1),
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          color: colorScheme.onError.withOpacity(1),
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onError.withOpacity(1),
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onError.withOpacity(1),
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray100,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onError.withOpacity(1),
          fontSize: getFontSize(
            34,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    onPrimary: Color(0XFF292D32),
    shadow: Color(0XFF292D32),
    onPrimaryContainer: Color(0XFFFFFFFF),
    onTertiary: Color(0XFFFFFFFF),
    scrim: Color(0XFFCD3232),
    primaryContainer: Color(0XFFCD3232),
    tertiaryContainer: Color(0XFFFFFFFF),
    secondaryContainer: Color(0XFFFFFFFF),
    error: Color(0XFF292D32),
    onErrorContainer: Color(0XFF0C2A3E),
    outline: Color(0XFF292D32),
    onSurfaceVariant: Color(0XFF292D32),
    onBackground: Color(0XFFFFFFFF),
    outlineVariant: Color(0XFFCD3232),
    errorContainer: Color(0XFFA0A0A0),
    onSurface: Color(0XFFFFFFFF),
    onError: Color(0X7E000000),
    surface: Color(0XFFCD3232),
    onInverseSurface: Color(0X7E000000),
    onSecondaryContainer: Color(0XFF292D32),
    tertiary: Color(0XFFCD3232),
    surfaceTint: Color(0XFF292D32),
    onTertiaryContainer: Color(0XFF292D32),
    surfaceVariant: Color(0XFFFFFFFF),
    inversePrimary: Color(0XFFCD3232),
    secondary: Color(0XFFCD3232),
    inverseSurface: Color(0XFF292D32),
    background: Color(0XFFCD3232),
    onSecondary: Color(0XFFFFFFFF),
    primary: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  Color get primaryVariant => Color(0XFFCD3232);
  Color get secondaryVariant => Color(0XFFFFFFFF);
  Color get blueGray300 => Color(0XFFA3A3B5);
  Color get indigoA700 => Color(0XFF1A2ADF);
  Color get green600 => Color(0XFF35A339);
  Color get gray600 => Color(0XFF7C7C7C);
  Color get gray70019 => Color(0X19606470);
  Color get green50 => Color(0XFFEBF6EB);
  Color get amber500 => Color(0XFFFFC107);
  Color get lightGreen50 => Color(0XFFEEFBEE);
  Color get gray300 => Color(0XFFDDDDDD);
  Color get gray400 => Color(0XFF808080);
  Color get gray200 => Color(0XFFEBEBEB);
  Color get gray700 => Color(0XFF696969);
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get amber700 => Color(0XFFE1A200);
  Color get cyan50 => Color(0XFFDEF5FA);
  Color get teal50 => Color(0XFFE1E8EC);
  Color get gray50 => Color(0XFFF8F8F8);
  Color get red700 => Color(0XFFD83636);
  Color get indigo900 => Color(0XFF002987);
  Color get greenA700 => Color(0XFF04B155);
  Color get blueGray400 => Color(0XFF888888);
  Color get black => Color(0XFF000000);
  Color get buttonColor => Color(0XFF36A439);
  Color get errorColor => Color(0XFFD93636);
  Color get white => Color(0XFFFFFFFF);
  Color get borderColor => Color(0XFFD9D9D9);
  Color get lightgreenColor => Color(0XFFEBF6EB);
  Color get greenTextColor => Color(0XFF04B155);
  Color get yellowTextColor => Color(0XFFE1A200);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

closeApp() {
  Future.delayed(const Duration(milliseconds: 1000), () {
    SystemNavigator.pop();
  });
}

setSafeAreaColor(){
  SystemChrome.setSystemUIOverlayStyle(

    SystemUiOverlayStyle(
      statusBarColor:theme.colorScheme.primary,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}



