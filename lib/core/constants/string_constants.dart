//string constants
class StringConstants {
  static const String fullName = "Full Name";
  static const String username = "Username";
  static const String displayName = "DisplayName";
  static const String email = "Email";
  static const String password = "Password";
  static const String dontHaveAccount = "Don't have an account? Register";
  static const String forgotPassword = "Forgot password?";
  static const String alreadyHaveAccount = "Already have an account? Login";

  static const String verifyCode = "Verification Code";
  static const String verifyCodeDescription =
      "Enter the verification code sent to your email.";
  static const String verifyCodeResend = "Resend code";
  static const String verifyCodeResendDescription =
      "Didn't receive the code? Resend it.";
  static const String verifyCodeResendSuccess =
      "Verification code resent successfully!";

  static const String createYourAccount = 'Create Your Account';
  static const String firstCreate = 'First Create Your Account';

  static const String enterYourFullName = "Enter your full name";
  static const String enterYourUserName = "Enter your userName";
  static const String enterYourDisplayName = "Enter your Display Name";
  static const String enterYourEmail = "Enter your email address";
  static const String enterYourPassword = "Enter your password";
  static const String confirmPassword = "Confirm Password";

  // error messages
  static const String emptyFieldError = 'Email or password can not be empty!';
  static const String emptyPasswordError = 'Password is not be empty!';
  static const String emptyConfirmPasswordError =
      'Confirm password can not be empty';
  static const String passwordsDoNotMatch = 'Password does not match';
  static const String emptyUsernameError = 'Username cannot be empty!';
  static const String invalidEmail = 'Invalid email address!';
  static const String invalidPassword = 'Invalid password!';
  static const String invalidUsername = 'Invalid username!';
  static const String invalidName = 'Invalid name!';
  static const String invalidSurname = 'Invalid surname!';
  static const String invalidVerifyCode = 'Invalid verification code!';
  static const String usernameTaken = 'Username is already taken!';
  static const String emailAlreadyRegistered = 'Email is already registered!';
  static const String weakPassword =
      'Password must be at least 8 characters long and include a mix of letters, numbers, and symbols.';
  static const String invalidToken = 'Invalid or expired verification token!';
  static const String networkError =
      'Network error occurred. Please try again later.';
  static const String accountLocked =
      'Your account has been locked. Please contact support.';
  static const String sessionExpired =
      'Your session has expired. Please log in again.';
  static const String createAccountError = 'Error creating account!';
  static const String loginError = 'Error logging in!';
  static const String verifyCodeResendError =
      "Error resending verification code!";

  static const String errorMessage =
      'An error occurred!'; // <-- Added this line

  // success messages
  static const String successMessage = 'Registered successfully!';
  static const String loginSuccess = 'Logged in successfully!';
  static const String logoutSuccess = 'Logged out successfully!';
  static const String accountCreated = 'Account created successfully!';
  static const String passwordResetSuccess = 'Password reset successfully!';
  static const String passwordChangedSuccess = 'Password changed successfully!';
  static const String emailVerified = 'Email verified successfully!';

  // button texts
  static const String loginButton = 'Login';
  static const String registerButton = 'Register';
  static const String continueButton = 'Continue';
  static const String cancelButton = 'Cancel';
  static const String submitButton = 'Submit';
  static const String sendRequestButton = 'Send Request';

  static const String groupName = 'Group Name';
  static const String loadingMessage = 'Loading...';

  static List<String> get settings => [
    'Account information',
    'Privacy and security',
    'Notifications',
    'Language',
    'Theme',
    'Help and support',
    'Logout',
    // 'Delete account',
  ];
}