import 'package:abyss/core/constants/index.dart';
import 'package:abyss/logic/auth/auth_bloc.dart';
import 'package:abyss/logic/auth/auth_event.dart';
import 'package:abyss/logic/auth/auth_state.dart';
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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // ✅ form key

  @override
  void dispose() {
    emailController.dispose();
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
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.error)));
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
                      controller: emailController,
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
                      controller: passwordController,
                      hintText: 'password',
                      isEnabled: true,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      key: _formKey,

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
                      onPressed: () {
                        final email = emailController.text;
                        final password = passwordController.text;

                        // if (email.isNotEmpty && password.isNotEmpty) {
                        if (_formKey.currentState!.validate()) {
                          // Bloc'a login event gönder
                          context.read<AuthBloc>().add(
                            LoginRequested(email: email, password: password),
                          );
                        } else {
                          // Hata mesajı göster
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Email and Password cannot be empty',
                              ),
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
                      onPressed: () => context.go('/'),
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
