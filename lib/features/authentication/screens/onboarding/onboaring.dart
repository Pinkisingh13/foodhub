import 'package:flutter/material.dart';
import 'package:foodhub/features/authentication/controllers/onborading/onboarding_controller.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'widgets/divider_button.dart';
import 'widgets/titleand_subtitle.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// --- Background Image ---
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(PImages.bgImage), fit: BoxFit.contain),
            ),
          ),

          /// --- Background Gradient ---

          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            ),
          ),

          /// --- Title & Subtitle ---
          const TitleAndSubtitle(),

          /// --- Divider & Button ---
          DividerAndButton(
            onTap: () {
              controller.onTap();
            },
          ),
        ],
      ),
    );
  }
}
