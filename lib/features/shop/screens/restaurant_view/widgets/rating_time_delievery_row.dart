import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';

class RatingTimeDelievery extends StatelessWidget {
  const RatingTimeDelievery({
    super.key,
    required this.rating,
    required this.time,
  });

  // final RestaurantModel e;
  final String rating, time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Icon(
              Icons.star_border_outlined,
              color: PColors.primary,
            ),
            Text(rating),
          ],
        ),
        const SizedBox(
          width: PSizes.spaceBtwItems,
        ),
        Row(
          children: [
            const Icon(
              Icons.av_timer,
              color: PColors.primary,
            ),
            Text(time),
          ],
        ),
        const SizedBox(
          width: PSizes.spaceBtwItems,
        ),
        const Row(
          children: [
            Icon(
              Icons.delivery_dining_rounded,
              color: PColors.primary,
            ),
            Text(
              "Free",
            ),
          ],
        ),
      ],
    );
  }
}
