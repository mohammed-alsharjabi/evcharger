import 'package:flutter/material.dart';
import 'package:vision1/core/theme_helper.dart';

class ButtonThemeHelper {
  static ButtonStyle get fillGreen600 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.green600,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        12,
      ),
    ),
  );
  static ButtonStyle get fillGray50 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        8,
      ),
    ),
  );
  static ButtonStyle get outlineBluegray100 => OutlinedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    side: BorderSide(
      color: appTheme.blueGray100,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        12,
      ),
    ),
  );
  static ButtonStyle get outlineGray200 => OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    side: BorderSide(
      color: appTheme.gray200,
      width: 1,
    ),
    shape: RoundedRectangleBorder(),
  );
  static ButtonStyle get outlineOnError => ElevatedButton.styleFrom(
    backgroundColor: appTheme.green600,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          8,
        ),
        topRight: Radius.circular(
          0,
        ),
        bottomLeft: Radius.circular(
          8,
        ),
        bottomRight: Radius.circular(
          0,
        ),
      ),
    ),
    shadowColor: theme.colorScheme.onError.withOpacity(0.06),
    elevation: 4,
  );
  static ButtonStyle get outlineOnErrorLR8 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          0,
        ),
        topRight: Radius.circular(
          8,
        ),
        bottomLeft: Radius.circular(
          0,
        ),
        bottomRight: Radius.circular(
          8,
        ),
      ),
    ),
    shadowColor: theme.colorScheme.onError.withOpacity(0.06),
    elevation: 4,
  );
  static ButtonStyle get outlineOnErrorTL8 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          8,
        ),
        topRight: Radius.circular(
          0,
        ),
        bottomLeft: Radius.circular(
          8,
        ),
        bottomRight: Radius.circular(
          0,
        ),
      ),
    ),
    shadowColor: theme.colorScheme.onError.withOpacity(0.06),
    elevation: 4,
  );
  static ButtonStyle get outlineOnErrorLR81 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.green600,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          0,
        ),
        topRight: Radius.circular(
          8,
        ),
        bottomLeft: Radius.circular(
          0,
        ),
        bottomRight: Radius.circular(
          8,
        ),
      ),
    ),
    shadowColor: theme.colorScheme.onError.withOpacity(0.06),
    elevation: 4,
  );
  static ButtonStyle get outlineGreen600 => OutlinedButton.styleFrom(
    backgroundColor: appTheme.white,
    surfaceTintColor: appTheme.white,
    foregroundColor: appTheme.secondaryVariant,
    side: BorderSide(
      color: appTheme.green600,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        12,
      ),
    ),
  );
  static ButtonStyle get fillGreen600TL8 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.green600,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        8,
      ),
    ),
  );
  static ButtonStyle get fillGreen600TL12 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.green600,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        12,
      ),
    ),
  );

  static ButtonStyle get fillwhite => ElevatedButton.styleFrom(
    backgroundColor: appTheme.white,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(
          getHorizontalSize(12)
      ),
    ),


  );
  static ButtonStyle get fillgreen => ElevatedButton.styleFrom(
    backgroundColor: appTheme.buttonColor,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: appTheme.buttonColor),
      borderRadius: BorderRadius.circular(
          getHorizontalSize(12)
      ),
    ),


  );

  static ButtonStyle get fillwhiteborder8 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.white,
    surfaceTintColor: appTheme.white,
    foregroundColor: appTheme.secondaryVariant,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: appTheme.buttonColor),
      borderRadius: BorderRadius.circular(
          getHorizontalSize(8)
      ),
    ),


  );
  static ButtonStyle get fillwhiteborder12 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.white,
    surfaceTintColor: appTheme.white,
    foregroundColor: appTheme.secondaryVariant,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: appTheme.buttonColor),
      borderRadius: BorderRadius.circular(
          getHorizontalSize(12)
      ),
    ),


  );
  static ButtonStyle get outlineRed700 => OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    side: BorderSide(
      color: appTheme.red700,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        16,
      ),
    ),
  );
  static ButtonStyle get outlineGreenA700 => OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    side: BorderSide(
      color: appTheme.greenA700,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        16,
      ),
    ),
  );
  static ButtonStyle get outlineAmber700 => OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    side: BorderSide(
      color: appTheme.amber700,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        16,
      ),
    ),
  );
  static ButtonStyle get none => ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all<double>(0),
  );
}
