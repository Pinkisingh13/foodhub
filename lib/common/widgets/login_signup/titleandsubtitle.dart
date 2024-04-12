import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';

class PImageTitleAndSubtitle extends StatelessWidget {
  const PImageTitleAndSubtitle({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child:
           Image(
            image: AssetImage(PImages.appLogo),
            height: 80,
          ),
        ),

        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          height: PSizes.xs,
        ),
        Text(
          subTitle,
        ),
        const SizedBox(
          height: PSizes.spaceBtwItems,
        ),
      ],
    );
  }
}
