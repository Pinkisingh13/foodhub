import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(
                    () => RestaurantViewScreen(
                      e: restaurantDetails[index],
                    ),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// --- Image ---
                    ClipRectContainerImage(
                      image: restaurantDetails[index].image,
                    ),

                    /// --- Restaurant Details ---
                    CategoryOfRestaurantDetails(
                      e: restaurantDetails[index],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
