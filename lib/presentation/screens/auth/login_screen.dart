import 'package:abyss/core/constants/index.dart';
import 'package:abyss/logic/auth/auth_bloc.dart';
import 'package:abyss/logic/auth/auth_event.dart';
import 'package:abyss/logic/auth/auth_state.dart';
import 'package:abyss/presentation/widgets/custom_alert_dialog.dart';
import 'package:abyss/presentation/widgets/custom_elevated_button.dart';
import 'package:abyss/presentation/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:abyss/presentation/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart'; // Özel metin alanı bileşenini import et

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailOrUserNameController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // ✅ form key

  @override
  void dispose() {
    emailOrUserNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          context.go('/'); // yönlendirme buradan artık çalışacak
        } else if (state is AuthFailure) {
          showDialog(
            context: context,
            builder:
                (BuildContext context) => CustomAlertDialog(
                  // !error hata mesajlari guncellenecek
                  errorMessageTitle: StringConstants.errorMessage,
                  errorMessage: StringConstants.errorMessage,
                  buttonText1: 'ok',
                  onButtonPressed1:
                      () => Navigator.of(context).pop(), // kullanimi cozulecek
                ),
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 80),
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
                      hintText:
                          'Email or user Name', // !error email or username constant gelicek
                      controller: emailOrUserNameController,
                      isEnabled: true,
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return StringConstants.emptyFieldError;
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      hintText: 'password',
                      controller: passwordController,
                      isEnabled: true,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return StringConstants.emptyPasswordError;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 50),
                    CustomElevatedButton(
                      text: StringConstants.loginButton,
                      isDarkTheme: true,
                      onPressed: () {
                        final email = emailOrUserNameController.text;
                        final password = passwordController.text;

                        // if (email.isNotEmpty && password.isNotEmpty) {
                        if (_formKey.currentState!.validate()) {
                          // Bloc'a login event gönder
                          context.read<AuthBloc>().add(
                            LoginRequested(email: email, password: password),
                          );
                        } else {
                          // Hata mesajı göster
                          showDialog(
                            context: context,
                            builder:
                                (BuildContext context) => CustomAlertDialog(
                                  errorMessageTitle:
                                      StringConstants.errorMessage,
                                  errorMessage: '',
                                  buttonText1: 'ok',
                                  onButtonPressed1:
                                      () =>
                                          Navigator.of(
                                            context,
                                          ).pop(), // kullanimi cozulecek
                                ),
                          );
                        }
                      },
                      isEnabled: true,
                    ),
                    SizedBox(height: 170),
                    CustomTextButton(
                      text: StringConstants.dontHaveAccount,
                      isDarkTheme: true,
                      isEnabled: true,
                      onPressed: () => context.go('/register'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
