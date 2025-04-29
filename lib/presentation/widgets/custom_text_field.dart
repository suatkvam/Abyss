import 'package:flutter/material.dart';
import 'package:abyss/core/constants/index.dart'; // Tüm sabitleri import et

class CustomTextField extends StatelessWidget {
  // girilen yaziyi tutar
  final TextEditingController controller;
  // icinde gozuken aciklama ornegin e-mail
  final String? hintText;
  // textfield'in aktif olup olmadigini belirler
  final bool isEnabled;
  // sifre gibi girilen seyleri gizlemek icin kullanilir true oldu durum gizler
  final bool obscureText;
  // klavye  tipini belirler
  final TextInputType keyboardType;
  // form dogrulmasi icin
  final String? Function(String?)? validator;
  // textfield'da degisiklik yapilip yapilmadini disari haber vermeni saglar
  final void Function(String)? onceChanged;
  // tema acik mi koyu mu onu belirler ve ona gore renkleri ayarlar
  final bool isDarkTheme;

  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText,
    required this.isEnabled,
    required this.obscureText,
    required this.keyboardType,
    this.validator,
    this.onceChanged,
    this.isDarkTheme = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //TextFormField'ı saran bir kutu
      height: AppSizes.inputHeightMedium,
      width: AppSizes.inputWidthMedium,
      // TextField'dan farkı, Form içinde kullanıldığında validator gibi ekstra özellikleri desteklemesidir. saglar
      child: TextFormField(
        // temeldavranis parametreleri
        controller: controller,
        enabled: isEnabled,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        onChanged: onceChanged,
        //still ayarlari
        style: TypographyConstants.bodyText1.copyWith(
          color:
              isDarkTheme
                  ? DarkColorConstants.textWhitePrimary
                  : LightColorConstants.textWhitePrimary,
        ),
        // textformfield in gorunumunu kontrol eder border vs..
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TypographyConstants.bodyText3.copyWith(
            color:
                isDarkTheme
                    ? DarkColorConstants.placeholderColor
                    : LightColorConstants.placeholderColor,
          ),
          // text filedin icini dolduruyor
          // filled: true,
          // fillColor:
          //     isDarkTheme
          //         ? DarkColorConstants.inputFieldBackgroundColor
          //         : LightColorConstants.inputFieldBackgroundColor,
          // yazinin kutu kenaralarindan uzakligi
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.spacingSmall,
            vertical: AppSizes.spacingSmall,
          ),
          border: const UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color:
                  isDarkTheme
                      ? DarkColorConstants.separatorDefaultColor
                      : LightColorConstants.separatorDefaultColor,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color:
                  isDarkTheme
                      ? DarkColorConstants.separatorFocusedColor
                      : LightColorConstants.separatorFocusedColor,
              width: 1.5,
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color:
                  isDarkTheme
                      ? DarkColorConstants.separatorDisabledColor
                      : LightColorConstants.separatorDisabledColor,
              width: 1.5,
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color:
                  isDarkTheme
                      ? DarkColorConstants.separatorErrorColor
                      : LightColorConstants.separatorErrorColor,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
