import 'package:abyss/core/constants/index.dart';
import 'package:abyss/logic/auth/auth_bloc.dart';
import 'package:abyss/logic/auth/auth_event.dart';
import 'package:abyss/logic/auth/auth_state.dart';
import 'package:abyss/presentation/widgets/custom_elevated_button.dart';
import 'package:abyss/presentation/widgets/custom_text_button.dart';
import 'package:abyss/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController displayNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    fullNameController.dispose();
    userNameController.dispose();
    displayNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          context.go('/');
        } else if (state is AuthFailure) {
          showDialog(
            context: context,
            builder:
                (_) => AlertDialog(
                  //!error bunu widget a costume seklinde aktar
                  title: const Text(StringConstants.errorMessage),
                  content: Text(state.error),
                  actions: [
                    CustomTextButton(
                      text: 'text', // yazi eklenecek
                      isDarkTheme: true,
                      isEnabled: true,
                      onPressed:
                          () =>
                              Navigator.of(
                                context,
                              ).pop(), // kullanimi cozulecek
                    ),
                    CustomTextButton(
                      text: 'text', // yazi eklenecek
                      isDarkTheme: true,
                      isEnabled: true,
                      onPressed:
                          () =>
                              Navigator.of(
                                context,
                              ).pop(), // kullanimi cozulecek
                    ),
                  ],
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
                    Text(
                      StringConstants.createYourAccount,
                      style: TypographyConstants.heading1.copyWith(
                        color: DarkColorConstants.textWhitePrimary,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      StringConstants.firstCreate,
                      style: TypographyConstants.bodyText1.copyWith(
                        color: DarkColorConstants.textWhitePrimary,
                      ),
                    ),
                    SizedBox(height: 75),
                    CustomTextField(
                      hintText: StringConstants.enterYourFullName,
                      controller: fullNameController,
                      isEnabled: true,
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return StringConstants
                              .emptyFieldError; // !error bunlar StringConstants buradan cekilecek
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      hintText: StringConstants.enterYourUserName,
                      controller: userNameController,
                      isEnabled: true,
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return StringConstants
                              .emptyFieldError; // !error bunlar StringConstants buradan cekilecek
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      hintText: StringConstants.enterYourDisplayName,
                      controller: displayNameController,
                      isEnabled: true,
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return StringConstants
                              .emptyFieldError; // !error bunlar StringConstants buradan cekilecek
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      hintText: StringConstants.enterYourEmail,
                      controller: emailController,
                      isEnabled: true,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return StringConstants
                              .emptyFieldError; // !error bunlar StringConstants buradan cekilecek
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      hintText: StringConstants.enterYourPassword,
                      controller: passwordController,
                      isEnabled: true,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return StringConstants
                              .emptyPasswordError; // !error bunlar StringConstants buradan cekilecek
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 5),
                    CustomTextField(
                      hintText: StringConstants.confirmPassword,
                      controller: confirmPasswordController,
                      isEnabled: true,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return StringConstants
                              .emptyConfirmPasswordError; // ✅ sabit hata mesajı
                        }
                        if (value != passwordController.text) {
                          return StringConstants
                              .passwordsDoNotMatch; // ✅ şifre doğrulama
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 75),
                    CustomElevatedButton(
                      text: StringConstants.registerButton,
                      isDarkTheme: true,
                      isEnabled: true,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Bloc'a login event gönder
                          context.read<AuthBloc>().add(
                            RegisterRequested(
                              email: emailController.text,
                              password: passwordController.text,
                              fullName: fullNameController.text,
                              displayName: displayNameController.text,
                              username: userNameController.text,
                              discriminator: '',
                            ),
                          );
                        } else {
                          // Hata mesajı göster
                          showDialog(
                            context: context,
                            builder:
                                (BuildContext context) => AlertDialog(
                                  //!error bunu widget a costume seklinde aktar
                                  title: const Text('data'),
                                  content: const Text('description'),
                                  actions: [
                                    CustomTextButton(
                                      text: 'text', // yazi eklenecek
                                      isDarkTheme: true,
                                      isEnabled: true,
                                      onPressed:
                                          () =>
                                              Navigator.of(
                                                context,
                                              ).pop(), // kullanimi cozulecek
                                    ),
                                    CustomTextButton(
                                      text: 'text', // yazi eklenecek
                                      isDarkTheme: true,
                                      isEnabled: true,
                                      onPressed:
                                          () =>
                                              Navigator.of(
                                                context,
                                              ).pop(), // kullanimi cozulecek
                                    ),
                                  ],
                                ),
                          );
                        }
                      },
                    ),
                    SizedBox(height: 50),
                    CustomTextButton(
                      text: StringConstants.alreadyHaveAccount,
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
