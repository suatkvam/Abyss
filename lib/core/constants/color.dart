import 'package:flutter/material.dart';

class DarkColorConstants {
  // Dark mode theme colors
  static const Color darkBackgroundColor = Color(0xFF111A27);
  static const Color darkLogoBackgroundColor = Color(0xFF526D82);

  // primary button color
  static const Color darkPrimaryButtonColor = Color(0xFF9DB2BF);
  static const Color darkPrimaryButtonPressedColor = Color(0xFF3D90C4);
  static const Color darkPrimaryButtonDiasbledColor = Color(0xFFCCEFFF);

  // secondary button color
  static const Color darkSecondaryButtonColor = Color(0xFF00BBFF);
  static const Color darkSecondaryButtonPressedColor = Color(0xFF0090CC);
  static const Color darkSecondaryButtonDisabledColor = Color(0xFFCCEFFF);
  static const Color roundButtonColor = Color(0xFF9DB2BF);

  // text colors
  static const Color textBlackPrimary = Color(0xFF232323);
  static const Color disabledTextColor = Color(
    0xFF9DB2BF,
  ); // secondary button disabled text color
  static const Color textWhitePrimary = Color(0xFFDDE6ED);
  static const Color textWhiteSecondary = Color(0xFFFFFFFF);
  static const Color linkTextColor = Color(0xFF0793FF);
  static const Color unreadMessageIndicatorColor = Color(0xFF44D4F3);
  static const Color sucsessColor = Color(0xFF00BBFF);
  static const Color errorColor = Color(0xFFCD1A1A);
  static const Color readIconColor = Color(0xFF00BBFF);

  // message input field colors
  static const Color inputFieldBackgroundColor = Color(0xFF111A27);

  static const messageInputGradient1 = LinearGradient(
    begin: Alignment.topCenter, // start point (top)
    end: Alignment.bottomCenter, // end point (bottom)
    colors: [
      Color(0xFF1A202C), // %11
      Color(0xFF242C3B), // %60
      Color(0xFF2D3748), // %92
    ],
    stops: [0.11, 0.60, 0.92], // colors gradient stops
  );
  static const messageInputGradient2 = LinearGradient(
    begin: Alignment.topCenter, // start point (top)
    end: Alignment.bottomCenter, // end point (bottom)
    colors: [
      Color(0xFF232426), // %80
      Color(0xFF2D3748), // %100
    ],
    stops: [0.80, 1.0], // colors gradient stops
  );

  // placeholder colors
  static const Color placeholderColor = Color(0xFFCBD5E1);

  // toggle switc colores
  static Color toggleSwitchTrackOnColor = Color(0xFF4CAF50);
  static Color toggleSwitchThumbOnColor = Color(0xFF165951);
  static Color toggleSwitchTrackOffColor = Color.fromRGBO(42, 47, 58, 0.8);
  static Color toggleSwitchThumbOffColor = Color.fromRGBO(68, 76, 86, 0.9);
  static Color toggleSwitchTrackDisabledColor = Color.fromRGBO(42, 47, 58, 0.4);
  static Color toggleSwitchThumbDisabledColor = Color.fromRGBO(68, 76, 86, 0.4);

  // toggle switch shadow effect colorr
  static List<BoxShadow> toggleThumbShadow = [
    BoxShadow(
      color: Color.fromRGBO(73, 192, 186, 0.83),
      offset: Offset(0, 0),
      blurRadius: 4,
      spreadRadius: 0,
    ),
  ];
  // separator colors
  static Color separatorDefaultColor = Color(0xFF9DB2BF);
  static Color separatorFocusedColor = Color(0xFF00BBFF);
  static Color separatorErrorColor = Color(0xFFCD1A1A);
  static Color separatorDisabledColor = Color.fromRGBO(226, 232, 240, 0.5);
}

///////////////////////////////
class LightColorConstants {
  // Light mode theme colors
  static const Color lightBackgroundColor = Color(
    0xFFEEE5D8,
  ); // Invert of darkBackgroundColor
  static const Color lightLogoBackgroundColor = Color(
    0xFFAD927D,
  ); // Invert of darkLogoBackgroundColor

  // Primary button color
  static const Color lightPrimaryButtonColor = Color(
    0xFF624D40,
  ); // Invert of darkPrimaryButtonColor
  static const Color lightPrimaryButtonPressedColor = Color(
    0xFFC26F3B,
  ); // Invert of darkPrimaryButtonPressedColor
  static const Color lightPrimaryButtonDisabledColor = Color(
    0xFF331000,
  ); // Invert of darkPrimaryButtonDiasbledColor

  // Secondary button color
  static const Color lightSecondaryButtonColor = Color(
    0xFFFF4400,
  ); // Invert of darkSecondaryButtonColor
  static const Color lightSecondaryButtonPressedColor = Color(
    0xFFFF6F33,
  ); // Invert of darkSecondaryButtonPressedColor
  static const Color lightSecondaryButtonDisabledColor = Color(
    0xFF331000,
  ); // Invert of darkSecondaryButtonDisabledColor
  static const Color roundButtonColor = Color(
    0xFF624D40,
  ); // Invert of roundButtonColor

  // Text colors
  static const Color textBlackPrimary = Color(
    0xFF232323,
  ); // Koyu metin, light theme'de değişmedi (okunabilirlik için)
  static const Color disabledTextColor = Color(
    0xFF624D40,
  ); // Invert of disabledTextColor
  static const Color textWhitePrimary = Color(
    0xFF221912,
  ); // Invert of textWhitePrimary
  static const Color textWhiteSecondary = Color(
    0xFF000000,
  ); // Invert of textWhiteSecondary
  static const Color linkTextColor = Color(
    0xFFF86C00,
  ); // Invert of linkTextColor
  static const Color unreadMessageIndicatorColor = Color(
    0xFFBB2B0C,
  ); // Invert of unreadMessageIndicatorColor
  static const Color successColor = Color(0xFFFF4400); // Invert of sucsessColor
  static const Color errorColor = Color(0xFF32E5E5); // Invert of errorColor
  static const Color readIconColor = Color(
    0xFFFF4400,
  ); // Invert of readIconColor

  // Message input field colors
  static const Color inputFieldBackgroundColor = Color(
    0xFFEEE5D8,
  ); // Invert of inputFieldBackgroundColor
  static const messageInputGradient1 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFE5DFD3), // Invert of 0xFF1A202C
      Color(0xFFDBD3C4), // Invert of 0xFF242C3B
      Color(0xFFD2C8B7), // Invert of 0xFF2D3748
    ],
    stops: [0.11, 0.60, 0.92],
  );
  static const messageInputGradient2 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFDCD5D9), // Invert of 0xFF232426
      Color(0xFFD2C8B7), // Invert of 0xFF2D3748
    ],
    stops: [0.80, 1.0],
  );

  // Placeholder colors
  static const Color placeholderColor = Color(
    0xFF342A1E,
  ); // Invert of placeholderColor

  // Toggle switch colors
  static Color toggleSwitchTrackOnColor = Color(
    0xFFB350AF,
  ); // Invert of toggleSwitchTrackOnColor
  static Color toggleSwitchThumbOnColor = Color(
    0xFFE9A6AE,
  ); // Invert of toggleSwitchThumbOnColor
  static Color toggleSwitchTrackOffColor = Color.fromRGBO(
    213,
    208,
    197,
    0.8,
  ); // Invert of toggleSwitchTrackOffColor
  static Color toggleSwitchThumbOffColor = Color.fromRGBO(
    187,
    179,
    169,
    0.9,
  ); // Invert of toggleSwitchThumbOffColor
  static Color toggleSwitchTrackDisabledColor = Color.fromRGBO(
    213,
    208,
    197,
    0.4,
  ); // Invert of toggleSwitchTrackDisabledColor
  static Color toggleSwitchThumbDisabledColor = Color.fromRGBO(
    187,
    179,
    169,
    0.4,
  ); // Invert of toggleSwitchThumbDisabledColor

  // Toggle switch shadow effect color
  static List<BoxShadow> toggleThumbShadow = [
    BoxShadow(
      color: Color.fromRGBO(
        182,
        63,
        69,
        0.83,
      ), // Invert of Color.fromRGBO(73, 192, 186, 0.83)
      offset: Offset(0, 0),
      blurRadius: 4,
      spreadRadius: 0,
    ),
  ];

  // Separator colors
  static Color separatorDefaultColor = Color(
    0xFF624D40,
  ); // Invert of separatorDefaultColor
  static Color separatorFocusedColor = Color(
    0xFFFF4400,
  ); // Invert of separatorFocusedColor
  static Color separatorErrorColor = Color(
    0xFF32E5E5,
  ); // Invert of separatorErrorColor
  static Color separatorDisabledColor = Color.fromRGBO(
    29,
    23,
    15,
    0.5,
  ); // Invert of separatorDisabledColor
}
