import 'package:flutter/foundation.dart';
import 'package:foodhub/features/authentication/screens/signup/signup.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  void onTap() {
    final storage = GetStorage();

   storage.write('isFirstTime', false);

    if (kDebugMode) {
      print(storage.read("isFirstTime"));
    }

    Get.offAll(() => const Signup());
  }
}
