import 'package:flutter/material.dart';
import 'package:foodhub/features/authentication/screens/login/login.dart';
import 'package:foodhub/features/authentication/screens/signup/verify_email.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class PSignupForm extends StatelessWidget {
  const PSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          
          // Full Name
          TextFormField(
            // validator: (value) => PValidator.validateEmptyText(PTexts.fullName, value),
            // controller: ,
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
            // validator: (value) => PValidator.validatePhoneNumber(value),
            // controller: ,
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
            // validator: (value) => PValidator.validateEmail(value),
            // controller: ,
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
          TextFormField(
            // controller: controller.password,
            // validator: (value) => PValidator.validatePassword(value),
            // obscureText: controller.togglePassword.value,
            decoration: InputDecoration(
              labelText: PTexts.password,
              prefixIcon: const Icon(Icons.password),
              suffixIcon: IconButton(
                // onPressed: () => controller.togglePassword.value =
                // !controller.togglePassword.value,
                icon: const Icon(
                  // controller.togglePassword.value
                  //     ? Iconsax.eye_slash
                  //     : Iconsax.eye,
                  Icons.remove_red_eye,
                ),
                onPressed: () {},
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
                Get.to(() => const VerifyEmailScreen());
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
