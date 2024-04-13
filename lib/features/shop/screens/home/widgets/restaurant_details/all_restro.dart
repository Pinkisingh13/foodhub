import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/row_title_divider/row_titlewith_divider.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/features/shop/screens/home/widgets/cliprect_container_image.dart';
import 'package:foodhub/features/shop/screens/home/widgets/restaurant_details/restaurant_category.dart';
import 'package:foodhub/features/shop/screens/restaurant_view/restaurant_details.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class PAllRestaurants extends StatelessWidget {
  const PAllRestaurants({
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
          height: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              /// Restraunt Name, rating, time, category..
              ...restaurantDetails.map(
                (e) => GestureDetector(
                  onTap: () {
                    Get.to(() => RestaurantViewScreen(
                          element: e,
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// --- Image ---
                      ClipRectContainerImage(
                        image: e.image,
                      ),

                      /// --- Restaurant Details ---
                      CategoryOfRestaurantDetails(
                        e: e,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
