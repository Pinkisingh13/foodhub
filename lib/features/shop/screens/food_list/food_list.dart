import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/features/shop/screens/food_view/food_view.dart';
import 'package:foodhub/features/shop/screens/home/widgets/cliprect_container_image.dart';
import 'package:foodhub/features/shop/screens/home/widgets/restaurant_details/rating_time.dart';
import 'package:foodhub/features/shop/screens/restaurant_view/restaurant_details.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:get/get.dart';

class FoodListScreen extends StatelessWidget {
  const FoodListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Get.arguments ?? "";

    return Scaffold(
      appBar: AppBar(
        title: Text(data),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Restaurant To Explore",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Divider(
                indent: 0,
                endIndent: 130,
              ),

              // List of restaurant or food
              const IfContainsData(),
            ],
          ),
        ),
      ),
    );
  }
}

class IfContainsData extends StatelessWidget {
  const IfContainsData({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final data = Get.arguments ?? "";
    final filteredRestro = restaurantDetails
        .where((element) =>
            element.category.any((category) => category.contains(data)))
        .toList();
    return SizedBox(
      height: 700,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: PSizes.spaceBtwSections * 1.7),
        itemCount: filteredRestro.length,
        itemBuilder: (context, index) {
          final item = filteredRestro[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: PSizes.spaceBtwSections),
            child: InkWell(
              onTap: () {
                Get.to(RestaurantViewScreen(e: filteredRestro[index]));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRectContainerImage(image: item.image),
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          softWrap: true,
                          item.name,
                        ),

                        // Rating And time row
                        const RatingAndTime(),

                        // Category
                        Text(item.category.join(", ")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
