import 'dart:async';

import 'package:foodhub/features/authentication/screens/onboarding/onboaring.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    changeScreen();
  }

  void changeScreen() {
    Timer(const Duration(seconds: 4), () {
      Get.offAll(() => const OnBoardingScreen());
    });
  }
}
