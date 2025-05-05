import 'package:flutter_bloc/flutter_bloc.dart';
import 'verify_email_event.dart';
import 'verify_email_state.dart';

class VerifyEmailBloc extends Bloc<VerifyEmailEvent, VerifyEmailState> {
  VerifyEmailBloc() : super(VerifyEmailInitial()) {
    on<SubmitVerificationCode>((event, emit) async {
      emit(VerifyEmailLoading());
      await Future.delayed(Duration(seconds: 2)); // Dummy işlem
      if (event.code == "123456") {
        emit(VerifyEmailSuccess());
      } else {
        emit(VerifyEmailFailure("Geçersiz kod"));
      }
    });
  }
}
