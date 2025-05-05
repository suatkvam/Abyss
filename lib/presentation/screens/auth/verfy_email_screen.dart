// import 'dart:async';

// import 'package:abyss/presentation/widgets/custom_alert_dialog.dart';
// import 'package:abyss/presentation/widgets/custom_elevated_button.dart';
// import 'package:abyss/presentation/widgets/custom_text_button.dart';
// import 'package:abyss/presentation/widgets/custom_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import '../../../core/constants/index.dart';

// class VerifyEmailScreen extends StatelessWidget {
//   VerifyEmailScreen({super.key});

//   final TextEditingController _codeController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 80),
//                 Text(
//                   StringConstants.createYourAccount,
//                   style: TypographyConstants.heading1.copyWith(
//                     color: DarkColorConstants.textWhitePrimary,
//                     fontSize: 32,
//                   ),
//                 ),
//                 SizedBox(height: 50),
//                 Text(
//                   StringConstants.firstCreate,
//                   style: TypographyConstants.bodyText1.copyWith(
//                     color: DarkColorConstants.textWhitePrimary,
//                   ),
//                 ),
//                 SizedBox(height: 12),
//                 CustomTextField(
//                   controller: _codeController,
//                   isEnabled: true,
//                   obscureText: false,
//                   keyboardType: TextInputType.number,
//                 ),
//                 SizedBox(height: 75),
//                 CustomElevatedButton(
//                   text: StringConstants.registerButton,
//                   isDarkTheme: true,
//                   isEnabled: true,
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:abyss/core/constants/index.dart';
import 'package:abyss/logic/auth/verify_email/verify_email_bloc.dart';
import 'package:abyss/logic/auth/verify_email/verify_email_state.dart';
import 'package:abyss/logic/auth/verify_email/verify_email_event.dart';
import 'package:abyss/presentation/widgets/custom_alert_dialog.dart';
import 'package:abyss/presentation/widgets/custom_elevated_button.dart';
import 'package:abyss/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// ... mevcut importlar

class VerifyEmailScreen extends StatelessWidget {
  VerifyEmailScreen({super.key});

  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => VerifyEmailBloc(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<VerifyEmailBloc, VerifyEmailState>(
            listener: (context, state) {
              if (state is VerifyEmailSuccess) {
                // Başarılıysa yönlendir
                GoRouter.of(context).go("/home");
              } else if (state is VerifyEmailFailure) {
                showDialog(
                  context: context,
                  builder:
                      (BuildContext context) => CustomAlertDialog(
                        // !error hata mesajlari guncellenecek
                        errorMessageTitle: StringConstants.errorMessage,
                        errorMessage: StringConstants.errorMessage,
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
            builder: (context, state) {
              return SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      SizedBox(height: 12),
                      CustomTextField(
                        controller: _codeController,
                        isEnabled: true,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 75),
                      CustomElevatedButton(
                        text: StringConstants.registerButton,
                        isDarkTheme: true,
                        // ignore: prefer_is_not_operator
                        isEnabled: !(state is VerifyEmailLoading),
                        onPressed: () {
                          context.read<VerifyEmailBloc>().add(
                            SubmitVerificationCode(_codeController.text),
                          );
                        },
                      ),
                      if (state is VerifyEmailLoading) ...[
                        SizedBox(height: 20),
                        CircularProgressIndicator(),
                      ],
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
