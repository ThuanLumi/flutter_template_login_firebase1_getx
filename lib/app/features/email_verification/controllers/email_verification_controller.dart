part of email_verification;

class EmailVerificationController extends GetxController {
  final auth = AuthService();
  final isLoadingSignOut = false.obs;
  final isLoadingResend = false.obs;

  String? email;
  Timer? timer;

  @override
  void onInit() {
    super.onInit();

    if (auth.currentUser != null) {
      email = auth.currentUser?.email;
      checkEmailVerified();
    } else {
      email = null;
    }
  }

  void checkEmailVerified() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) async {
        await auth.reload();

        if (auth.isEmailVerified == true) {
          timer?.cancel();
          goToDashBoard();
        }
      },
    );
  }

  void signOut() async {
    isLoadingSignOut.value = true;
    await auth.signOut();

    isLoadingSignOut.value = false;
    Get.offAllNamed(Routes.splash);
  }

  void resend() async {
    isLoadingResend.value = true;
    try {
      await auth.sendEmailVerification();
      AppSnackbar.showMessage('Verification email has been sent');
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case 'too-many-requests':
          AppSnackbar.showMessage('Too many requests');
          break;
        default:
          AppSnackbar.showMessage('Something went wrong!');
      }
    } catch (error) {
      AppSnackbar.showMessage('Something went wrong!');
    }
    isLoadingResend.value = false;
  }

  void goToDashBoard() => Get.offAllNamed(Routes.dashboard);
}
