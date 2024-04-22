import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/container/restaurant_image_container.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({super.key, required this.foodmodel});
  final FoodModel foodmodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PSizes.defaultSpace),
      child: Column(
        children: [
          // Image
          PRestaurantImageContainer(
            image: foodmodel.image,
            height: 180,
            fit: BoxFit.cover,
            // width: 300,
          ),
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      foodmodel.foodName,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: PSizes.sm,
                    ),
                    Text(
                      foodmodel.price,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: PSizes.sm,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: PSizes.spaceBtwItems * 2,
              ),
              SizedBox(
                height: 40,
                width: PHelperFunctions.screenHeight() / 9,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: PColors.primary,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Add",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: PColors.white),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),
          Text(
            foodmodel.description,
            // overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
