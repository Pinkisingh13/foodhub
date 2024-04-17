import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';

class AddToCartItemDesign extends StatelessWidget {
  const AddToCartItemDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PSizes.defaultSpace/2),
      child: Row(
        children: [
          // Food name
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodList[0].foodName,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: PSizes.spaceBtwSections,
          ),

          // Increase & decrease Button
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: PColors.darkGrey),
            ),
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      size: 15,
                      Icons.remove,
                      color: PColors.primary,
                    ),
                  ),
                ),
                Text("2", style: Theme.of(context).textTheme.bodyMedium),
                Expanded(
                  child: IconButton(
                    splashRadius: 4,
                    onPressed: () {},
                    icon: const Icon(
                      size: 15,
                      Icons.add,
                      color: PColors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: PSizes.spaceBtwItems,
          ),

          // Price
          Text(foodList[0].price),
        ],
      ),
    );
  }
}
