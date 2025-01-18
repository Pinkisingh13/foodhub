import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodhub/common/widgets/success_screen/success_screen.dart';
import 'package:foodhub/data/repositories/authentication/authentication.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:foodhub/utils/popups/loaders.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  /// Send email whenever verify email screen appears & set Timer for auto redirect
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

// Send email verification link
  void sendEmailVerification() async {
    try {
      await AuthenticationRepo.instance.sendEmailVerification();

      TLoaders.successSnackbar(
          title: "Email Sent",
          message: "Please check your inbox and verify your email. ");
    } catch (e) {
      TLoaders.errorSnackbar(title: "Oh Snap!", message: e.toString());
    }
  }

  // Timer to automatically redirect on Email Verification
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();

      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessScreen(
              image: PImages.successfullyRegisterAnimation,
              title: PTexts.yourAccountCreatedTitle,
              subTitle: PTexts.yourAccountCreatedSubTitle,
              onPressed: () => AuthenticationRepo.instance.screenRedirect(),
            ));
      }
    });
  }

  // Manually Check if Email Verified
  checkEmailVerificationStatusManually() {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(
        () => SuccessScreen(
          image: PImages.successfullyRegisterAnimation,
          title: PTexts.yourAccountCreatedTitle,
          subTitle: PTexts.yourAccountCreatedSubTitle,
          onPressed: () => AuthenticationRepo.instance.screenRedirect(),
        ),
      );
    }
  }
}
