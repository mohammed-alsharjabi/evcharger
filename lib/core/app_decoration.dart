import 'package:flutter/material.dart';
import 'package:vision1/core/theme_helper.dart';

class AppDecoration {

  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray300,
  );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
  );

  static BoxDecoration get fill => BoxDecoration(
    color: appTheme.green600,
  );
  static BoxDecoration get outline => BoxDecoration(
    color: theme.colorScheme.primary,
    boxShadow: [
      BoxShadow(
        color: theme.colorScheme.onError.withOpacity(0.06),
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get black => BoxDecoration(
    color: theme.colorScheme.onError.withOpacity(1),
  );
  static BoxDecoration get txtFill => BoxDecoration(
    color: appTheme.green600,
  );
  static BoxDecoration get white => BoxDecoration(
    color: theme.colorScheme.primary,
  );
  static BoxDecoration get outline2 => BoxDecoration(
    color: theme.colorScheme.primary,
    boxShadow: [
      BoxShadow(
        color: theme.colorScheme.onError.withOpacity(0.12),
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get fill5 => BoxDecoration(
    color: appTheme.gray300,
  );
  static BoxDecoration get outline1 => BoxDecoration(
    color: theme.colorScheme.primary,
    boxShadow: [
      BoxShadow(
        color: theme.colorScheme.onError.withOpacity(0.06),
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: Offset(
          0,
          -4,
        ),
      ),
    ],
  );
  static BoxDecoration get fill4 => BoxDecoration(
    color: theme.colorScheme.onError.withOpacity(0.15),
  );
  static BoxDecoration get outline4 => BoxDecoration(
    color: theme.colorScheme.primary,
    border: Border(
      bottom: BorderSide(
        color: appTheme.gray200,
        width: getHorizontalSize(
          1,
        ),
      ),
    ),
  );
  static BoxDecoration get outline3 => BoxDecoration(
    color: theme.colorScheme.primary,
    boxShadow: [
      BoxShadow(
        color: theme.colorScheme.onError.withOpacity(0.03),
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: Offset(
          0,
          -6,
        ),
      ),
    ],
  );
  static BoxDecoration get fill1 => BoxDecoration(
    color: appTheme.gray50,
  );
  static BoxDecoration get fill3 => BoxDecoration(
    color: appTheme.gray200,
  );
  static BoxDecoration get fill2 => BoxDecoration(
    color: appTheme.green50,
  );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius circleBorder2 = BorderRadius.circular(
    getHorizontalSize(
      2,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius circleBorder52 = BorderRadius.circular(
    getHorizontalSize(
      52,
    ),
  );

  static BorderRadius customBorderTL32 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        32,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        32,
      ),
    ),
  );

  static BorderRadius txtCircleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius circleBorder60 = BorderRadius.circular(
    getHorizontalSize(
      60,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
