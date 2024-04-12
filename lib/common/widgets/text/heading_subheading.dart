import 'package:flutter/material.dart';
import 'package:foodhub/common/styles/spacing_style.dart';
import 'package:foodhub/utils/constants/sizes.dart';

class PTitleAndSubtitle extends StatelessWidget {
  const PTitleAndSubtitle({
    super.key, required this.title, required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PSpacingStyle.paddingWithAppBarHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 27),
          ),
          const SizedBox(
            height: PSizes.sm,
          ),
           Text(subTitle),
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
        ],
      ),
    );
  }
}
