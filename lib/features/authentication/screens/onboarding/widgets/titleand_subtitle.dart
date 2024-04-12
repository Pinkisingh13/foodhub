import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: PHelperFunctions.screenHeight() / 5,
      left: PSizes.defaultSpace * 1.3,
      right: PSizes.spaceBtwSections,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            style: Theme.of(context).textTheme.displayMedium,
            TextSpan(
              children: [
                TextSpan(
                  text: PTexts.onBoardingTitle,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: PTexts.appName,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(
                          color: PColors.primary,
                          fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),
    
          SizedBox(
            width: 200,
            child: Text(
              PTexts.onBoardingSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: PColors.darkerGrey),
            ),
          ),
        ],
      ),
    );
  }
}