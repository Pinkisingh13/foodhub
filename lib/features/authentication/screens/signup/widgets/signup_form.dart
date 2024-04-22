import 'package:flutter/material.dart';
import 'package:foodhub/features/authentication/controllers/signup/signup_controller.dart';
import 'package:foodhub/features/authentication/screens/login/login.dart';

import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';
import 'package:foodhub/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PSignupForm extends StatelessWidget {
  const PSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          // Full Name
          TextFormField(
            validator: (value) =>
                PValidator.validateEmptyText(PTexts.fullName, value),
            controller: controller.fullName,
            expands: false,
            decoration: const InputDecoration(
              labelText: PTexts.fullName,
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          // Phone number
          TextFormField(
            validator: (value) => PValidator.validatePhoneNumber(value),
            controller: controller.phoneNumber,
            expands: false,
            decoration: const InputDecoration(
              labelText: PTexts.phoneNo,
              prefixIcon: Icon(Icons.call),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          // Email
          TextFormField(
            validator: (value) => PValidator.validateEmail(value),
            controller: controller.email,
            expands: false,
            decoration: const InputDecoration(
              labelText: PTexts.email,
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          // Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => PValidator.validatePassword(value),
              obscureText: controller.togglePassword.value,
              decoration: InputDecoration(
                labelText: PTexts.password,
                prefixIcon: const Icon(Icons.password),
                suffixIcon: IconButton(
                  onPressed: () => controller.togglePassword.value =
                      !controller.togglePassword.value,
                  icon: Icon(
                    controller.togglePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),

          //  --- Signup Button ---
          SizedBox(
            width: PHelperFunctions.screenWidth() / 1.3,
            child: ElevatedButton(
              onPressed: () {
                controller.signup();
                // Get.to(() => const VerifyEmailScreen());
              },
              child: const Text(PTexts.signupTitle),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),
          SizedBox(
            width: PHelperFunctions.screenWidth() / 1.3,
            child: OutlinedButton(
              onPressed: () {
                Get.to(() => const LoginScreen());
              },
              child: const Text(PTexts.loginTitle),
            ),
          ),
        ],
      ),
    );
  }
}
