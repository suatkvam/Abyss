import 'package:flutter/material.dart';
import '../constants/index.dart';

class AppTheme {
  // Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      // General
      brightness: Brightness.dark,
      scaffoldBackgroundColor: DarkColorConstants.darkBackgroundColor,
      primaryColor: DarkColorConstants.darkPrimaryButtonColor,
      hintColor: DarkColorConstants.placeholderColor,

      // Text Theme
      textTheme: TextTheme(
        displayLarge: TypographyConstants.heading1.copyWith(
          color: DarkColorConstants.textWhitePrimary,
          height: TypographyConstants.lineHeightLarge,
        ),
        displayMedium: TypographyConstants.heading2.copyWith(
          color: DarkColorConstants.textWhitePrimary,
          height: TypographyConstants.lineHeightLarge,
        ),
        displaySmall: TypographyConstants.heading3.copyWith(
          color: DarkColorConstants.textWhitePrimary,
          height: TypographyConstants.lineHeightMedium,
        ),
        headlineMedium: TypographyConstants.heading4.copyWith(
          color: DarkColorConstants.textWhitePrimary,
          height: TypographyConstants.lineHeightMedium,
        ),
        bodyLarge: TypographyConstants.bodyText1.copyWith(
          color: DarkColorConstants.textWhiteSecondary,
          height: TypographyConstants.lineHeightMedium,
        ),
        bodyMedium: TypographyConstants.bodyText2.copyWith(
          color: DarkColorConstants.textWhiteSecondary,
          height: TypographyConstants.lineHeightSmall,
        ),
        bodySmall: TypographyConstants.bodyText3.copyWith(
          color: DarkColorConstants.textWhiteSecondary,
          height: TypographyConstants.lineHeightSmall,
        ),
        labelLarge: TypographyConstants.caption1.copyWith(
          color: DarkColorConstants.textWhitePrimary,
        ),
        labelMedium: TypographyConstants.caption2.copyWith(
          color: DarkColorConstants.textWhitePrimary,
        ),
        labelSmall: TypographyConstants.caption3.copyWith(
          color: DarkColorConstants.textWhitePrimary,
        ),
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: DarkColorConstants.darkBackgroundColor,
        elevation: 0,
        titleTextStyle: TypographyConstants.heading4.copyWith(
          color: DarkColorConstants.textWhitePrimary,
        ),
        iconTheme: IconThemeData(
          color: DarkColorConstants.textWhitePrimary,
          size: AppSizes.iconSizeMedium,
        ),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: DarkColorConstants.darkPrimaryButtonPressedColor,
          backgroundColor: DarkColorConstants.darkPrimaryButtonColor,
          disabledBackgroundColor:
              DarkColorConstants.darkPrimaryButtonDisabledColor,
          disabledForegroundColor: DarkColorConstants.disabledTextColor,
          textStyle: TypographyConstants.bodyText3.copyWith(
            color: DarkColorConstants.textWhiteSecondary,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.spacingLarge,
            vertical: AppSizes.spacingMedium,
          ),
        ),
      ),

      // Text Button Theme (for links, secondary buttons)
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: DarkColorConstants.darkSecondaryButtonPressedColor,
          backgroundColor: DarkColorConstants.darkSecondaryButtonColor,
          disabledBackgroundColor:
              DarkColorConstants.darkSecondaryButtonDisabledColor,
          disabledForegroundColor: DarkColorConstants.disabledTextColor,
          textStyle: TypographyConstants.caption2.copyWith(
            color: DarkColorConstants.linkTextColor,
          ),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: DarkColorConstants.inputFieldBackgroundColor,
        hintStyle: TypographyConstants.caption1.copyWith(
          color: DarkColorConstants.placeholderColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          borderSide: BorderSide(
            color: DarkColorConstants.separatorDefaultColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          borderSide: BorderSide(
            color: DarkColorConstants.separatorDefaultColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          borderSide: BorderSide(
            color: DarkColorConstants.separatorFocusedColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          borderSide: BorderSide(color: DarkColorConstants.separatorErrorColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          borderSide: BorderSide(
            color: DarkColorConstants.separatorDisabledColor,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSizes.spacingLarge,
          vertical: AppSizes.spacingMedium,
        ),
      ),

      // Switch Theme
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return DarkColorConstants.toggleSwitchTrackDisabledColor;
          }
          if (states.contains(WidgetState.selected)) {
            return DarkColorConstants.toggleSwitchTrackOnColor;
          }
          return DarkColorConstants.toggleSwitchTrackOffColor;
        }),
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return DarkColorConstants.toggleSwitchThumbDisabledColor;
          }
          if (states.contains(WidgetState.selected)) {
            return DarkColorConstants.toggleSwitchThumbOnColor;
          }
          return DarkColorConstants.toggleSwitchThumbOffColor;
        }),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        thumbIcon: WidgetStateProperty.all(null),
      ),

      // Divider Theme
      dividerTheme: DividerThemeData(
        color: DarkColorConstants.separatorDefaultColor,
        thickness: AppSizes.separatorHeight,
        space: AppSizes.spacingSmall,
      ),
    );
  }

  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      // General
      brightness: Brightness.light,
      scaffoldBackgroundColor: LightColorConstants.lightBackgroundColor,
      primaryColor: LightColorConstants.lightPrimaryButtonColor,
      hintColor: LightColorConstants.placeholderColor,

      // Text Theme
      textTheme: TextTheme(
        displayLarge: TypographyConstants.heading1.copyWith(
          color: LightColorConstants.textBlackPrimary,
          height: TypographyConstants.lineHeightLarge,
        ),
        displayMedium: TypographyConstants.heading2.copyWith(
          color: LightColorConstants.textBlackPrimary,
          height: TypographyConstants.lineHeightLarge,
        ),
        displaySmall: TypographyConstants.heading3.copyWith(
          color: LightColorConstants.textBlackPrimary,
          height: TypographyConstants.lineHeightMedium,
        ),
        headlineMedium: TypographyConstants.heading4.copyWith(
          color: LightColorConstants.textBlackPrimary,
          height: TypographyConstants.lineHeightMedium,
        ),
        bodyLarge: TypographyConstants.bodyText1.copyWith(
          color: LightColorConstants.textBlackPrimary,
          height: TypographyConstants.lineHeightMedium,
        ),
        bodyMedium: TypographyConstants.bodyText2.copyWith(
          color: LightColorConstants.textBlackPrimary,
          height: TypographyConstants.lineHeightSmall,
        ),
        bodySmall: TypographyConstants.bodyText3.copyWith(
          color: LightColorConstants.textBlackPrimary,
          height: TypographyConstants.lineHeightSmall,
        ),
        labelLarge: TypographyConstants.caption1.copyWith(
          color: LightColorConstants.textBlackPrimary,
        ),
        labelMedium: TypographyConstants.caption2.copyWith(
          color: LightColorConstants.textBlackPrimary,
        ),
        labelSmall: TypographyConstants.caption3.copyWith(
          color: LightColorConstants.textBlackPrimary,
        ),
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: LightColorConstants.lightBackgroundColor,
        elevation: 0,
        titleTextStyle: TypographyConstants.heading4.copyWith(
          color: LightColorConstants.textBlackPrimary,
        ),
        iconTheme: IconThemeData(
          color: LightColorConstants.textBlackPrimary,
          size: AppSizes.iconSizeMedium,
        ),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: LightColorConstants.lightPrimaryButtonPressedColor,
          backgroundColor: LightColorConstants.lightPrimaryButtonColor,
          disabledBackgroundColor:
              LightColorConstants.lightPrimaryButtonDisabledColor,
          disabledForegroundColor: LightColorConstants.disabledTextColor,
          textStyle: TypographyConstants.bodyText3.copyWith(
            color: LightColorConstants.textWhiteSecondary,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.spacingLarge,
            vertical: AppSizes.spacingMedium,
          ),
        ),
      ),

      // Text Button Theme (for links, secondary buttons)
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: LightColorConstants.lightSecondaryButtonPressedColor,
          backgroundColor: LightColorConstants.lightSecondaryButtonColor,
          disabledBackgroundColor:
              LightColorConstants.lightSecondaryButtonDisabledColor,
          disabledForegroundColor: LightColorConstants.disabledTextColor,
          textStyle: TypographyConstants.caption2.copyWith(
            color: LightColorConstants.linkTextColor,
          ),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: LightColorConstants.inputFieldBackgroundColor,
        hintStyle: TypographyConstants.caption1.copyWith(
          color: LightColorConstants.placeholderColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          borderSide: BorderSide(
            color: LightColorConstants.separatorDefaultColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          borderSide: BorderSide(
            color: LightColorConstants.separatorDefaultColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          borderSide: BorderSide(
            color: LightColorConstants.separatorFocusedColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          borderSide: BorderSide(
            color: LightColorConstants.separatorErrorColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          borderSide: BorderSide(
            color: LightColorConstants.separatorDisabledColor,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSizes.spacingLarge,
          vertical: AppSizes.spacingMedium,
        ),
      ),

      // Switch Theme
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return LightColorConstants.toggleSwitchTrackDisabledColor;
          }
          if (states.contains(WidgetState.selected)) {
            return LightColorConstants.toggleSwitchTrackOnColor;
          }
          return LightColorConstants.toggleSwitchTrackOffColor;
        }),
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return LightColorConstants.toggleSwitchThumbDisabledColor;
          }
          if (states.contains(WidgetState.selected)) {
            return LightColorConstants.toggleSwitchThumbOnColor;
          }
          return LightColorConstants.toggleSwitchThumbOffColor;
        }),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        thumbIcon: WidgetStateProperty.all(null),
      ),

      // Divider Theme
      dividerTheme: DividerThemeData(
        color: LightColorConstants.separatorDefaultColor,
        thickness: AppSizes.separatorHeight,
        space: AppSizes.spacingSmall,
      ),
    );
  }
}
