import 'package:abyss/core/constants/index.dart';
import 'package:abyss/presentation/widgets/custom_elevated_button.dart';
import 'package:abyss/presentation/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:abyss/presentation/widgets/custom_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart'; // Özel metin alanı bileşenini import et

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80,),
              Container(
                width: AppSizes.logoBackgroundWidth,
                height: AppSizes.logoBackgroundHeight,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: DarkColorConstants.darkLogoBackgroundColor,
                ),
                child: SvgPicture.asset(
                  AssetPaths.logo,
                  width: AppSizes.logoWidth,
                  height: AppSizes.logoHeight,
                ),
              ),
              SizedBox(height: 75),
              CustomTextField(
                controller: TextEditingController(),
                hintText: 'Email or userName',
                isEnabled: true,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              CustomTextField(
                controller: TextEditingController(),
                hintText: 'password',
                isEnabled: true,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 50),
              CustomElevatedButton(
                text: StringConstants.loginButton,
                isDarkTheme: true,
                onPressed: () => context.go('/'),
                isEnabled: true,
              ),
              SizedBox(height: 170),
              // CustomTextButton(
              //   text: StringConstants.dontHaveAccount,
              //   isDarkTheme: true,
              //   isEnabled: true,
              //   onPressed: () => context.go('/'),
              // ),
              CustomTextButton(text: StringConstants.dontHaveAccount),
            ],
          ),
        ),
      ),
    );
  }
}
