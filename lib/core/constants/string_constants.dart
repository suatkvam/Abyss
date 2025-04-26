//string constants
class StringConstants {
  static const String fullName = "Full Name";
  static const String username = "Username";
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

  static const String enterYourEmail = "Enter your email address";
  static const String enterYourPassword = "Enter your password";
  static const String confirmPassword = "Confirm Password";

  // error messages
  static const String errorMessage = 'An error occurred!';
  static const String noInternetConnection = 'No internet connection!';
  static const String serverError = 'Server error! Please try again later.';
  static const String timeoutError = 'Request timed out! Please try again.';
  static const String unknownError = 'Unknown error! Please try again.';
  static const String verifyCodeResendError =
      "Error resending verification code!";

  // static const String noDataFound = 'No data found!';
  static const String invalidEmail = 'Invalid email address!';
  static const String invalidPassword = 'Invalid password!';
  static const String invalidUsername = 'Invalid username!';
  static const String invalidName = 'Invalid name!';
  static const String invalidSurname = 'Invalid surname!';
  static const String invalidVerifyCode = 'Invalid verification code!';

  static const createAccountError = 'Error creating account!';
  static const loginError = 'Error logging in!';

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
