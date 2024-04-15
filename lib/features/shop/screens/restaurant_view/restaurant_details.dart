import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/features/shop/screens/restaurant_view/widgets/all_food_list.dart';
import 'package:foodhub/features/shop/screens/restaurant_view/widgets/rating_time_delievery_row.dart';
import 'package:foodhub/common/widgets/container/restaurant_image_container.dart';
import 'package:foodhub/features/shop/screens/restaurant_view/widgets/row_text_divider.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';

class RestaurantViewScreen extends StatelessWidget {
  const RestaurantViewScreen({super.key, required this.e});

  final RestaurantModel e;

  @override
  Widget build(BuildContext context) {
    final filteredList =
        foodList.where((element) => element.id == e.id).toList();
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: PSizes.defaultSpace),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline_rounded,
                color: PColors.darkerGrey,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: PSizes.md, vertical: PSizes.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //  --- Restaurant Image ---
              PRestaurantImageContainer(image: e.image,),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// --- Rating, Time and delievery ---
              RatingTimeDelievery(rating: e.rating, time: e.time,),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// Title 
              Text(
                e.name,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: PColors.black),
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// Restaurant Description
              Text(
                "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: PColors.grey),
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              /// --- Menu Heading ---
              const PRowTextWithDivider(),
              const SizedBox(height: PSizes.spaceBtwSections),

              /// All food items in Restaurant 
              PAllFoodList(filteredList: filteredList),
            ],
          ),
        ),
      ),
    );
  }
}

