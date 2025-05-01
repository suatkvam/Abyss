import 'package:abyss/presentation/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

import '../../core/constants/index.dart';

class CustomAlertDialog extends StatelessWidget {
  final String errorMessageTitle;
  final String errorMessage;
  final String buttonText1;
  final String? buttonText2;
  final VoidCallback onButtonPressed1;
  final VoidCallback? onButtonPressed2;

  const CustomAlertDialog({
    super.key,
    required this.errorMessageTitle,
    required this.errorMessage,
    required this.buttonText1,
    required this.onButtonPressed1,
    // optinal
    this.buttonText2,
    this.onButtonPressed2,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(errorMessageTitle, style: TypographyConstants.caption2),
      content: Text(errorMessage, style: TypographyConstants.bodyText2),
      actions: [
        CustomTextButton(
          text: buttonText1,
          isDarkTheme: true,
          isEnabled: true,
          onPressed: onButtonPressed1,
        ),
        if (buttonText2 != null && onButtonPressed2 != null)
          CustomTextButton(
            text: buttonText2!,
            isDarkTheme: true,
            isEnabled: true,
            onPressed: onButtonPressed2,
          ),
      ],
    );
  }
}
