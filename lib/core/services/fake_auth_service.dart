class FakeAuthService {
  bool _isLoggedIn = false;
  String? _currentUserEmail;

  Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 1));
    if (email == 'test@example.com' && password == '1234') {
      _isLoggedIn = true;
      _currentUserEmail = email;
      return true;
    }
    return false;
  }

  Future<bool> register(String email, String password) async {
    await Future.delayed(Duration(seconds: 1));
    _isLoggedIn = true;
    _currentUserEmail = email;
    return true;
  }

  Future<void> sendVerificationCode(String email) async {
    // ignore: avoid_print
    print('Doğrulama kodu $email adresine gönderildi (simülasyon).');
  }

  Future<bool> verifyCode(String email, String code) async {
    return code == "123456";
  }

  bool get isLoggedIn => _isLoggedIn;
  String? get currentUserEmail => _currentUserEmail;

  void logout() {
    _isLoggedIn = false;
    _currentUserEmail = null;
  }
}
