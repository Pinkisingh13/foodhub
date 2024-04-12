import 'package:flutter/material.dart';
import 'package:foodhub/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:foodhub/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Headings
              Text(
                PTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
              Text(
                PTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections * 2,
              ),

              ///Text Field
              Form(
                // key:  controller.forgetPasswordFormKey,
                child: TextFormField(
                  // controller: controller.email,
                  validator: PValidator.validateEmail,
                  decoration: const InputDecoration(
                    labelText: PTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              ///Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const ResetPasswordScreen());
                  },
                  // onPressed: () => controller.sendPasswordResetEmail(),
                  child: const Text(PTexts.submit),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
