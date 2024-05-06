import 'package:flutter/material.dart';
import 'package:vision1/core/theme/color.dart';
import 'package:vision1/core/theme_helper.dart';


class TextThemeHelper {
  static get labelLargeOpenSansOnError =>
      theme.textTheme.labelLarge!.openSans.copyWith(color: theme.colorScheme.onError.withOpacity(1),);

  static get bodyLargeRubik => theme.textTheme.bodyLarge!.rubik;

  static get titleMediumSFProText =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        fontSize: getFontSize(16,),
        fontWeight: FontWeight.w600,);

  static get bodyLargeRed700 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.red700,
  );

  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600,);

  static get bodyLargeSFProText => theme.textTheme.bodyLarge!.sFProText;

  static get titleMediumSFProTextSemiBold =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        fontSize: getFontSize(
          17,
        ),
        fontWeight: FontWeight.w600,
      );

  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.gray600,
  );

  static get bodyLargeOpenSansPrimary =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeOpenSansgray400 =>
      theme.textTheme.bodyLarge!.sFProDisplay.copyWith(
          color: appTheme.gray400,
          fontSize: getFontSize(
            18,
          ),
          fontWeight: FontWeight.w700
      );

  static get bodyLargeOpenSansBlack700 =>
      theme.textTheme.bodyLarge!.sFProDisplay.copyWith(
          color: appTheme.black,
          fontSize: getFontSize(
            18,
          ),
          fontWeight: FontWeight.w700
      );

  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.primary,
  );

  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w600,
  );

  static get titleLargeBold_1 => theme.textTheme.titleLarge!.copyWith(
    fontWeight: FontWeight.w700,
  );

  static get titleMediumOpenSans_1 => theme.textTheme.titleMedium!.openSans;

  static get titleMediumGreen600 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.green600,
  );

  static get titleSmallAmber700 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.amber700,
  );

  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray700,
    fontSize: getFontSize(
      14,
    ),
  );

  static get titleSmallRed700 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.red700,
  );
  static get titleSmallgreen700 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.greenTextColor,
  );
  static get titleSmallyellow700 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.yellowTextColor,
  );

  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
    fontSize: getFontSize(
      22,
    ),
    fontWeight: FontWeight.w700,
  );
  static get bodymedium16green => theme.textTheme.titleLarge!.copyWith(
    fontSize: getFontSize(
      16,
    ),
    fontFamily: "SF Pro Text",
    color: appTheme.buttonColor,
    fontWeight: FontWeight.w600,
  );

  static get bodymedium16black400 => theme.textTheme.titleLarge!.sFProDisplay.copyWith(
    fontSize: getFontSize(
      16,
    ),

    color: appTheme.black,
    fontWeight: FontWeight.w400,
  );
  static get bodymedium13black400 => theme.textTheme.titleLarge!.sFProDisplay.copyWith(
    fontSize: getFontSize(
      13,
    ),

    color: appTheme.black,
    fontWeight: FontWeight.w400,
  );

  static get bodymedium14gray400 => theme.textTheme.titleLarge!.sFProDisplay.copyWith(
    fontSize: getFontSize(
      14,
    ),

    color: appTheme.gray400,
    fontWeight: FontWeight.w400,
  );

  static get bodymedium14black => theme.textTheme.titleLarge!.sFProDisplay.copyWith(
    fontSize: getFontSize(
      14,
    ),

    color: appTheme.black,
    fontWeight: FontWeight.w400,
  );

  static get bodymedium14gray600 => theme.textTheme.titleLarge!.sFProDisplay.copyWith(
    fontSize: getFontSize(
      14,
    ),

    color: appTheme.gray400,
    fontWeight: FontWeight.w600,
  );
  static get bodymedium16green400 => theme.textTheme.titleLarge!.copyWith(
    fontSize: getFontSize(
      16,
    ),
    fontFamily: "SF Pro Text",
    color: appTheme.buttonColor,
    fontWeight: FontWeight.w400,
  );

  static get bodymedium16gray400 => theme.textTheme.titleLarge!.copyWith(
    fontSize: getFontSize(
      16,
    ),
    fontFamily: "SF Pro Text",
    color: appTheme.gray600,
    fontWeight: FontWeight.w400,
  );
  static get bodymedium16black => theme.textTheme.titleLarge!.copyWith(
    fontSize: getFontSize(
      16,
    ),
    fontFamily: "SF Pro Text",
    color: appTheme.black,
    fontWeight: FontWeight.w700,
  );

  static get titleMediumOpenSans =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontFamily: "SF Pro Text",
        fontWeight: FontWeight.w600,
      );
  static get title20width700Black =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        fontSize: getFontSize(
          20,
        ),
        fontFamily: "SF Pro Text",
        fontWeight: FontWeight.w700,
      );

  static get titleboldblack =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        fontSize: getFontSize(
          18,
        ),
        fontFamily: "SF Pro Text",
        fontWeight: FontWeight.w700,
      );

  static get titleMediumSemiBold16 => theme.textTheme.titleMedium!.copyWith(
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w600,
  );

  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
    color: theme.colorScheme.primary,
    fontSize: getFontSize(
      14,
    ),
  );

  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
    fontSize: getFontSize(
      15,
    ),
    fontWeight: FontWeight.w700,
  );

  static get titleSmallBoldGreen => theme.textTheme.titleSmall!.sFProDisplay.copyWith(
    fontSize: getFontSize(
      15,
    ),
    color: appTheme.buttonColor,
    fontWeight: FontWeight.w700,
  );
  static get titleSmallBoldWhite => theme.textTheme.titleSmall!.sFProDisplay.copyWith(
    fontSize: getFontSize(
      15,
    ),
    color: appTheme.white,
    fontWeight: FontWeight.w700,
  );

  static get titleLargeSFProText =>
      theme.textTheme.titleLarge!.sFProText.copyWith(
        fontWeight: FontWeight.w700,
      );

  static get displaySmallPrimary => const TextStyle(
    color: AppColor.white,
    fontWeight: FontWeight.bold,
    fontSize: 25,
    overflow: TextOverflow.ellipsis,

  );
  static get displaySmallGreen600 => theme.textTheme.displaySmall!.copyWith(
    color: appTheme.green600,
  );

  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray600,
  );

  static get titleMediumRubik => theme.textTheme.titleMedium!.rubik.copyWith(
    fontWeight: FontWeight.w500,
  );

  static get bodyMediumGreen600 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.green600,
  );

  static get titleSmallGreenA700 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.greenA700,
  );

  static get bodyLargeOpenSans => theme.textTheme.bodyLarge!.openSans;

  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray600,
  );

  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
    fontSize: getFontSize(
      14,
    ),
  );
  static get bodyMedium14width600 => theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
      fontSize: getFontSize(
        14,
      ),
      fontWeight: FontWeight.w600,
      color: appTheme.black
  );
  static get bodyMedium14width400 => theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
      fontSize: getFontSize(
        14,
      ),
      fontWeight: FontWeight.w400,
      color: appTheme.black
  );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(fontFamily: 'SF Pro Display',);
  }
}
