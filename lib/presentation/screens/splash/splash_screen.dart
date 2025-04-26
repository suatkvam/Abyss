import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:abyss/core/constants/index.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkColorConstants.darkBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              // AnimatedTextKit(
              //   animatedTexts: [
              //     FadeAnimatedText(
              //       'ABYSS',
              //       textStyle: TypographyConstants.heading1.copyWith(
              //         color: DarkColorConstants.textWhitePrimary,
              //       ),
              //       duration: const Duration(milliseconds: 2000),
              //     ),
              //   ],
              //   totalRepeatCount: 1,
              //   pause: const Duration(milliseconds: 500),
              //   // onFinished: () => context.go('/login'),
              // ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'ABYSS',
                    textStyle: TypographyConstants.heading1.copyWith(
                      color: DarkColorConstants.textWhitePrimary,
                    ),
                    speed: AnimationConstants.screenTransition,
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 500),
                // onFinished: () => context.go('/login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
