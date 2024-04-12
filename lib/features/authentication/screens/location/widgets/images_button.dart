import 'package:flutter/material.dart';
import 'package:foodhub/features/authentication/screens/notification/notification.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class LocationImageAndButton extends StatelessWidget {
  const LocationImageAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Image(
          image: AssetImage(PImages.locationImage),
          fit: BoxFit.fill,
          width: double.infinity,
          height: 400,
        ),
        const SizedBox(
          height: PSizes.spaceBtwSections,
        ),
        Positioned(
          bottom: 0,
          // Allow Location
          child: SizedBox(
            width: PHelperFunctions.screenHeight() / 3,
            child: ElevatedButton(
              onPressed: () {
                Get.off(() => const NotificationScreen());
              },
              child: const Text(PTexts.allowLocationButton),
            ),
          ),
        ),
      ],
    );
  }
}
