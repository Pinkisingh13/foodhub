import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/row_title_divider/row_titlewith_divider.dart';
import 'package:foodhub/features/shop/screens/home/widgets/cliprect_container_image.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';

class PCategoryOfRestaurants extends StatelessWidget {
  const PCategoryOfRestaurants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowTitleWithDivider(title: PTexts.categoryOfRestroTitle),
        const SizedBox(
          height: PSizes.spaceBtwItems,
        ),
    
        /// --- List of Restaurants ---
        SizedBox(
          // color: PColors.primary,
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
    
                  // Image
                  const ClipRectContainerImage(),
    
                  /// Restraunt Name, rating, time, category..
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Berco's- If You Love Chinese", style: Theme.of(context).textTheme.bodyLarge
                      !.copyWith(color: PColors.black),),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: PColors.tertiary, borderRadius: BorderRadius.circular(40)),
                            height: 20,
                            width: 20,
                            child: const Icon(
                              Icons.star,
                              color: PColors.white,
                              size: 17,
                            ),
                          ),
                          const SizedBox(width: PSizes.xs,),
                          const Text("4.5"),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}