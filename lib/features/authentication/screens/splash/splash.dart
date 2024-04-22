import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/device/device_utility.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(80)),
              color: PColors.white,
              image: DecorationImage(
                image: AssetImage(
                  PImages.appLogo,
                ),
              ),
            ),
            height: PDeviceUtils.getScreenHeight() / 4,
            width: PDeviceUtils.getScreenWidth(context) / 2.2,
          ),
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(PImages.food),
                height: PSizes.foodImageHeight,
                width: PSizes.foodImagewidth,
              ),
              SizedBox(
                width: PSizes.xs,
              ),
              Image(
                image: AssetImage(PImages.hub),
                height: PSizes.hubImageHeight,
                width: PSizes.hubImagewidth,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
