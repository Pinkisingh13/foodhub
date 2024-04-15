import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/features/shop/screens/home/widgets/restaurant_details/rating_time.dart';
import 'package:foodhub/features/shop/screens/home/widgets/restaurant_details/restaurant_category_row.dart';
import 'package:foodhub/utils/constants/colors.dart';

class CategoryOfRestaurantDetails extends StatelessWidget {
  const CategoryOfRestaurantDetails({
    super.key, required this.e,
  });

  final RestaurantModel e;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              e.name,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: PColors.black),
            ),
          ),

          /// --- Rating And Time ---
          RatingAndTime(e: e),

          /// --- Ctegory of Every Restaurant ---
          RestaurantCategoeyItem(e: e),
        ],
      ),
    );
  }
}