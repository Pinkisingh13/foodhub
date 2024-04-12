import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';

class DividerAndButton extends StatelessWidget {
  const DividerAndButton({
    super.key, 
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: PSizes.defaultSpace * 1.3,
      bottom: PHelperFunctions.screenWidth() / 9,
      right: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            endIndent: 20,
          ),
          Text(
            PTexts.onboardingDividerText,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: PColors.softGrey, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          SizedBox(
            width: PHelperFunctions.screenWidth() / 1.3,
            child: ElevatedButton(
              onPressed: onTap,
              child: const Text(PTexts.onBoardingButtonTitle),
            ),
          ),
        ],
      ),
    );
  }
}
