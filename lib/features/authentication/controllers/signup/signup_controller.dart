
import 'package:flutter/material.dart';
import 'package:foodhub/data/repositories/authentication/authentication.dart';
import 'package:foodhub/data/repositories/user/user_repository.dart';
import 'package:foodhub/features/authentication/screens/signup/verify_email.dart';
import 'package:foodhub/features/personalization/models/user_model.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/helpers/network_manager.dart';
import 'package:foodhub/utils/popups/full_screen_loader.dart';
import 'package:foodhub/utils/popups/loaders.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  // Variables
  final fullName = TextEditingController();
  final phoneNumber = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final togglePassword = true.obs;

  /// --- Signup ---
  Future<void> signup() async {
    //  Start Loader
    try {
      PFullScreenLoader.openLoadingDialogue(
          "Please wait...", PImages.docerAnimation);

      // Check Internet Connection
      final isConnected = await NetworkManager().isConnected();

      if (!isConnected) {
        PFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        PFullScreenLoader.stopLoading();
        return;
      }

      //Authentication
      final userCredential = await AuthenticationRepo.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());


      //Save user data
      final user = UserModel(
          id: userCredential.user!.uid,
          fullName: fullName.text.trim(),
          password: password.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: "");
      final userRepository = Get.put(UserRepo());
      await userRepository.saveUserData(user);

      // Remove loader
      PFullScreenLoader.stopLoading();

      //Show Success Message
      TLoaders.successSnackbar(
          title: 'Congratulations',
          message: 'Your Account has been created! Verify email to continue');

      // Move to Verify Email Screen
      Get.to(
        () => VerifyEmailScreen(
          email: email.text.trim(),
        ),
      );
    } catch (e) {
      // Show some Generic Error to the user
      TLoaders.errorSnackbar(title: 'Oh Snap!', message: e.toString());
      PFullScreenLoader.stopLoading();
    }
  }
}
