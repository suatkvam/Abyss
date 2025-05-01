import 'package:abyss/core/constants/index.dart';
import 'package:flutter/material.dart';

// class CustomTextButton extends StatelessWidget {
//   final void Function()? onPressed;
//   final String text;
//   final bool isEnabled;
//   final bool isDarkTheme;

//   const CustomTextButton({
//     super.key,
//     this.onPressed,
//     required this.text,
//     this.isEnabled = true,
//     this.isDarkTheme = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: isEnabled ? onPressed : null,
//       style: TextButton.styleFrom(
//         backgroundColor:
//             isEnabled
//                 ? (isDarkTheme
//                     ? DarkColorConstants.darkBackgroundColor
//                     : LightColorConstants.lightLogoBackgroundColor)
//                 : (isDarkTheme
//                     ? DarkColorConstants.darkBackgroundColor
//                     : LightColorConstants.lightBackgroundColor),
//       ),
//       child: Semantics(
//         label: "$text link",
//         child: Text(
//           text,
//           style: TypographyConstants.caption1.copyWith(
//             color:
//                 isEnabled
//                     ? (isDarkTheme
//                         ? DarkColorConstants.linkTextColor
//                         : LightColorConstants.linkTextColor)
//                     : (isDarkTheme
//                         ? DarkColorConstants.disabledTextColor
//                         : LightColorConstants.disabledTextColor),
//           ),
//         ),
//       ),
//     );
//   }
// }
class CustomTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool isEnabled;
  final bool isDarkTheme;

  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isEnabled = true,
    this.isDarkTheme = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isEnabled ? onPressed : null,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      child: Semantics(
        label: "$text button",
        child: Text(
          text,
          style: TypographyConstants.caption1.copyWith(
            color:
                isEnabled
                    ? (isDarkTheme
                        ? DarkColorConstants.linkTextColor
                        : LightColorConstants.linkTextColor)
                    : (isDarkTheme
                        ? DarkColorConstants.disabledTextColor
                        : LightColorConstants.disabledTextColor),
          ),
        ),
      ),
    );
  }
}
