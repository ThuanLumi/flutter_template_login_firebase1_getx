import 'package:flutter_template_login_firebase1_verify_reset_pass/app/features/dashboard/views/screens/dashboard_screen.dart';
import 'package:flutter_template_login_firebase1_verify_reset_pass/app/features/email_verification/views/screens/email_verification_screen.dart';
import 'package:flutter_template_login_firebase1_verify_reset_pass/app/features/forgot_password/views/screens/forgot_password_screen.dart';
import 'package:flutter_template_login_firebase1_verify_reset_pass/app/features/sign_in/views/screens/sign_in_screen.dart';
import 'package:flutter_template_login_firebase1_verify_reset_pass/app/features/sign_up/views/screens/sign_up_screen.dart';
import 'package:flutter_template_login_firebase1_verify_reset_pass/app/features/splash/views/screens/splash_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.signIn,
      page: () => const SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.signUp,
      page: () => const SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.emailVerification,
      page: () => const EmailVerificationScreen(),
      binding: EmailVerificationBinding(),
    ),
    GetPage(
      name: _Paths.forgotPassword,
      page: () => const ForgotPasswordScreen(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
  ];
}
