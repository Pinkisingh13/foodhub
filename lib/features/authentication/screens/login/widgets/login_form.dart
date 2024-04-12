import 'package:flutter/material.dart';
import 'package:foodhub/features/authentication/screens/location/location.dart';
import 'package:foodhub/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          const SizedBox(height: PSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            expands: false,
            // controller: ,
            // validator: (value) => PValidator.validatePassword(value),
            // obscureText: ,
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
          const SizedBox(height: PSizes.spaceBtwItems),

          /// --- Forget Password ---
          TextButton(
            onPressed: () {
              Get.to(() => const ForgetPassword());
            },
            child: const Text(
              PTexts.forgetPassword,
            ),
          ),
          const SizedBox(height: PSizes.spaceBtwItems),

          ///  --- Login Button ---
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const LocationScreen());
              },
              // onPressed: () => controller.emailAndPasswordSignIn(),
              child: const Text(PTexts.login),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),
        ],
      ),
    );
  }
}
