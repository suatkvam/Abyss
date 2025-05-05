abstract class VerifyEmailEvent {}

class SubmitVerificationCode extends VerifyEmailEvent {
  final String code;

  SubmitVerificationCode(this.code);
}
