import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/container/restaurant_image_container.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/features/shop/screens/food_view/widgets/bottom_addtocart.dart';
import 'package:foodhub/features/shop/screens/food_view/widgets/ingredients_row.dart';
import 'package:foodhub/features/shop/screens/restaurant_view/widgets/rating_time_delievery_row.dart';
import 'package:foodhub/utils/constants/sizes.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({super.key, required this.foodmodel});

  final FoodModel foodmodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodmodel.foodName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(PSizes.defaultSpace / 1.7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            PRestaurantImageContainer(
              image: foodmodel.image,
              height: 160,
              fit: BoxFit.fill,
              width: 300,
            ),
            const SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            //  Title
            /// Rating, Time & Delivery
            const RatingTimeDelievery(
              rating: "4.5",
              time: "30-35 mins",
            ),
            const SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            Text(
              "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: PSizes.spaceBtwItems,
            ),

            // Ingredients
            const IngredientsRow(),

            // Add to cart
          ],
        ),
      ),
      bottomNavigationBar: BottomAddToCart(price: foodmodel.price,),
    );
  }
}



