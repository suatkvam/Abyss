abstract class AuthEvent {}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;

  LoginRequested({required this.email, required this.password});
}

class RegisterRequested extends AuthEvent {
  final String email;
  final String password;
  final String fullName;
  final String username;
  final String discriminator;
  final String displayName;

  RegisterRequested({
    required this.email,
    required this.password,
    required this.fullName,
    required this.username,
    required this.discriminator,
    required this.displayName,
  });
}
