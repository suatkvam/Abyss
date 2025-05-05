// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../data/repositories/chat_repository.dart';
// import 'auth_event.dart';
// import 'auth_state.dart';

// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   final ChatRepository _chatRepository;

//   AuthBloc(this._chatRepository) : super(AuthInitial()) {
//     on<LoginRequested>(_onLoginRequested);
//     on<RegisterRequested>(_onRegisterRequested);
//   }

//   Future<void> _onLoginRequested(
//     LoginRequested event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(AuthLoading());
//     try {
//       final users = await _chatRepository.getUsers();
//       final matchingUsers =
//           users.where((user) => user.email == event.email).toList();
//       final user = matchingUsers.isNotEmpty ? matchingUsers.first : null;

//       if (user != null) {
//         // Simulate login success (no password check for dummy data)
//         emit(AuthSuccess(user.id));
//       } else {
//         emit(AuthFailure('User not found'));
//       }
//     } catch (e) {
//       emit(AuthFailure('An error occurred: $e'));
//     }
//   }

//   Future<void> _onRegisterRequested(
//     RegisterRequested event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(AuthLoading());
//     try {
//       final users = await _chatRepository.getUsers();
//       final userExists = users.any((user) => user.email == event.email);

//       if (userExists) {
//         emit(AuthFailure('User already exists'));
//       } else {
//         // Simulate registration (we can't add to dummy data, just simulate success)
//         // In a real scenario, we'd add the user to the data source
//         emit(AuthSuccess('new_user_id')); // Dummy user ID
//       }
//     } catch (e) {
//       emit(AuthFailure('An error occurred: $e'));
//     }
//   }
// }
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/services/fake_auth_service.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FakeAuthService _authService;

  AuthBloc(this._authService) : super(AuthInitial()) {
    on<LoginRequested>(_onLoginRequested);
    on<RegisterRequested>(_onRegisterRequested);
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final success = await _authService.login(event.email, event.password);
    if (success) {
      emit(AuthSuccess(_authService.currentUserEmail ?? 'unknown'));
    } else {
      emit(AuthFailure('Giriş başarısız.'));
    }
  }

  Future<void> _onRegisterRequested(
    RegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final success = await _authService.register(event.email, event.password);
    if (success) {
      await _authService.sendVerificationCode(event.email);
      emit(AuthSuccess(_authService.currentUserEmail ?? 'unknown'));
    } else {
      emit(AuthFailure('Kayıt başarısız.'));
    }
  }
}
