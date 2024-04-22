import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/container/cliprect_container_image.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/utils/constants/sizes.dart';

class TabBarViewWidgets extends StatelessWidget {
  const TabBarViewWidgets({super.key, required this.status, required this.length});

  final String status;
  final int length;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: length,
      itemBuilder: (context, index) {
        final restaurant = restaurantDetails[index];
        final food = foodList.firstWhere(
          (food) => food.id == restaurant.id,
          orElse: () => FoodModel(
              id: foodList[2].id,
              foodName: foodList[1].foodName,
              price: foodList[2].price,
              description: foodList[1].description,
              image: foodList[1].image), // Default FoodModel object
        );

        return Container(
          padding: const EdgeInsets.all(PSizes.spaceBtwItems),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRectContainerImage(
                    isShowFavIcon: false,
                    image: restaurant.image,
                    width: 80,
                  ),
                  const SizedBox(
                    width: PSizes.spaceBtwItems * 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 160,
                        child: Text(
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          food.foodName,
                        ),
                      ),
                      Text(food.price),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(text: "Status : "),
                            TextSpan(
                              text: status,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider()
            ],
          ),
        );
      },
    );
  }
}
