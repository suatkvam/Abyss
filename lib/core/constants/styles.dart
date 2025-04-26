import 'package:flutter/material.dart';

// typography styles
class TypographyConstants {
  // font family name
  static const String headingFontFamily = 'Manrope';
  static const String bodyFontFamily = 'Roboto';
  static const String captionFontFamily = 'Lato';

  // font weight
  static const FontWeight fontWeightRegular = FontWeight.w400;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightSemiBold = FontWeight.w600;
  static const FontWeight fontWeightBold = FontWeight.w700;

  // font size
  static const double fonstSizeXS = 11.0;
  static const double fontSizeS = 12.0;
  static const double fontSizeM = 13.0;
  static const double fontSizeL = 14.0;
  static const double fontSizeXL = 16.0;
  static const double fontSizeXXL = 18.0;
  static const double fontSizeXXXL = 20.0;
  static const double fontSizeXXXXL = 24.0;

  // line height
  static const double lineHeightSmall = 1.27; // font 14px
  static const double lineHeightMedium = 1.33; // font 16px
  static const double lineHeightLarge = 1.31; // font 17px

  static const TextStyle heading1 = TextStyle(
    //semibold
    fontFamily: headingFontFamily,
    fontSize: fontSizeXXXXL,
    fontWeight: fontWeightSemiBold,
  );
  static const TextStyle heading2 = TextStyle(
    // medium
    fontFamily: headingFontFamily,
    fontSize: fontSizeXXXL,
    fontWeight: fontWeightMedium,
  );
  static const TextStyle heading3 = TextStyle(
    //regular
    fontFamily: headingFontFamily,
    fontSize: fontSizeXXL,
    fontWeight: fontWeightRegular,
  );
  static const TextStyle heading4 = TextStyle(
    //bold
    fontFamily: headingFontFamily,
    fontSize: fontSizeXL,
    fontWeight: fontWeightBold,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: fontSizeXL,
    fontWeight: fontWeightRegular,
  );
  static const TextStyle bodyText2 = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: fontSizeL,
    fontWeight: fontWeightMedium,
  );
  static const TextStyle bodyText3 = TextStyle(
    fontFamily: bodyFontFamily,
    fontSize: fontSizeL,
    fontWeight: fontWeightBold,
  );

  static const TextStyle caption1 = TextStyle(
    fontFamily: captionFontFamily,
    fontSize: fontSizeS,
    fontWeight: fontWeightRegular,
    height: lineHeightMedium,
  );
  static const TextStyle caption2 = TextStyle(
    fontFamily: captionFontFamily,
    fontSize: fontSizeM,
    fontWeight: fontWeightRegular,
    height: lineHeightLarge,
  );
  static const TextStyle caption3 = TextStyle(
    fontFamily: captionFontFamily,
    fontSize: fontSizeS,
    fontWeight: fontWeightBold,
    height: lineHeightMedium,
  );
  static const TextStyle caption4 = TextStyle(
    fontFamily: captionFontFamily,
    fontSize: fonstSizeXS,
    fontWeight: fontWeightRegular,
    height: lineHeightSmall,
  );
}
