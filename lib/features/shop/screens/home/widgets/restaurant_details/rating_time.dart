import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/utils/constants/colors.dart';

class RatingAndTime extends StatelessWidget {
  const RatingAndTime({
    super.key,
    this.e,
    this.foodModel,
    this.showFoodModel = false,
  });

  final RestaurantModel? e;
  final FoodModel? foodModel;
  final bool showFoodModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: PColors.tertiary,
              borderRadius: BorderRadius.circular(40),
            ),
            height: 15,
            width: 15,
            child: const Icon(
              Icons.star,
              color: PColors.white,
              size: 12,
            ),
          ),

          // Rating ---
          Text(
           showFoodModel ?  e!.rating : "4.3",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: PColors.black,
                  fontSize: 13,
                ),
          ),

          /// Dot ---
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: PColors.black),
          ),

          // Time
          Text(
           showFoodModel ? e!.time : "20-25 mins",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: PColors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
