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
  static const Color lightBackgroundColor = Color(0xFFF5F7FA);
  static const Color lightLogoBackgroundColor = Color(0xFFE6E8EC);

  // primary button color
  static const Color lightPrimaryButtonColor = Color(0xFF6B8299);
  static const Color lightPrimaryButtonPressedColor = Color(0xFF2A6A93);
  static const Color lightPrimaryButtonDisabledColor = Color(0xFFE6F3FF);

  // secondary button color
  static const Color lightSecondaryButtonColor = Color(0xFF00BBFF);
  static const Color lightSecondaryButtonPressedColor = Color(0xFF0090CC);
  static const Color lightSecondaryButtonDisabledColor = Color(0xFFCCEFFF);
  static const Color roundButtonColor = Color(0xFF6B8299);

  // text colors (kept same as dark theme as per request)
  static const Color textBlackPrimary = Color(0xFF232323);
  static const Color disabledTextColor = Color(0xFF9DB2BF);
  static const Color textWhitePrimary = Color(0xFFDDE6ED);
  static const Color textWhiteSecondary = Color(0xFFFFFFFF);
  static const Color linkTextColor = Color(0xFF0793FF);
  static const Color unreadMessageIndicatorColor = Color(0xFF44D4F3);
  static const Color successColor = Color(0xFF00BBFF);
  static const Color errorColor = Color(0xFFCD1A1A);
  static const Color readIconColor = Color(0xFF00BBFF);

  // message input field colors
  static const Color inputFieldBackgroundColor = Color(0xFFEFF2F7);
  static const messageInputGradient1 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFECEEF3), // %11
      Color(0xFFE6E9F0), // %60
      Color(0xFFDEE2EB), // %92
    ],
    stops: [0.11, 0.60, 0.92],
  );
  static const messageInputGradient2 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFE8EAEF), // %80
      Color(0xFFDEE2EB), // %100
    ],
    stops: [0.80, 1.0],
  );

  // placeholder colors
  static const Color placeholderColor = Color(0xFF94A3B8);

  // toggle switch colors
  static Color toggleSwitchTrackOnColor = Color(0xFF4CAF50);
  static Color toggleSwitchThumbOnColor = Color(0xFF165951);
  static Color toggleSwitchTrackOffColor = Color.fromRGBO(203, 213, 225, 0.8);
  static Color toggleSwitchThumbOffColor = Color.fromRGBO(148, 163, 184, 0.9);
  static Color toggleSwitchTrackDisabledColor = Color.fromRGBO(
    203,
    213,
    225,
    0.4,
  );
  static Color toggleSwitchThumbDisabledColor = Color.fromRGBO(
    148,
    163,
    184,
    0.4,
  );

  // toggle switch shadow effect color
  static List<BoxShadow> toggleThumbShadow = [
    BoxShadow(
      color: Color.fromRGBO(73, 192, 186, 0.83),
      offset: Offset(0, 0),
      blurRadius: 4,
      spreadRadius: 0,
    ),
  ];

  // separator colors
  static Color separatorDefaultColor = Color(0xFF6B8299);
  static Color separatorFocusedColor = Color(0xFF00BBFF);
  static Color separatorErrorColor = Color(0xFFCD1A1A);
  static Color separatorDisabledColor = Color.fromRGBO(148, 163, 184, 0.5);
}
