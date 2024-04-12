import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/text/heading_subheading.dart';
import 'package:foodhub/features/shop/screens/home/home.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// --- Title And Subtitle
              const PTitleAndSubtitle(
                title: PTexts.notificationTitle,
                subTitle: PTexts.notificationSubTitle,
              ),

              /// Image
              const Image(
                image: AssetImage(PImages.notificationImage),
                fit: BoxFit.cover,
                height: 360,
              ),

              // Allow Notification Buttons
              SizedBox(
                width: PHelperFunctions.screenHeight() / 3,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const HomeScreen());
                  },
                  child: const Text(PTexts.allowNotificationButton),
                ),
              ),

              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
              SizedBox(
                width: PHelperFunctions.screenHeight() / 3,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    PTexts.notNow,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
