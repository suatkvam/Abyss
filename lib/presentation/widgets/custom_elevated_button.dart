import 'package:flutter/material.dart';

import '../../core/constants/index.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final bool isEnabled;
  final bool isDarkTheme;

  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.isEnabled = true,
    this.isDarkTheme = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.buttonWidthMedium,
      height: AppSizes.buttonHeightMedium,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isDarkTheme
                  ? DarkColorConstants.darkPrimaryButtonColor
                  : LightColorConstants.lightPrimaryButtonColor,

          foregroundColor:
              isDarkTheme
                  ? DarkColorConstants.darkPrimaryButtonPressedColor
                  : LightColorConstants.lightPrimaryButtonPressedColor,
          disabledBackgroundColor:
              isDarkTheme
                  ? DarkColorConstants.darkPrimaryButtonDisabledColor
                  : LightColorConstants.lightPrimaryButtonDisabledColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusExtraLarge),
          ),
        ),
        child: Center(
          child: Semantics(
            label: "$text button",
            child: Text(
              text,
              style: TypographyConstants.bodyText3.copyWith(
                color:
                    isDarkTheme
                        ? DarkColorConstants.textBlackPrimary
                        : LightColorConstants.textBlackPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
