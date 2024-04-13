import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/features/shop/screens/home/widgets/cliprect_container_image.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';

class RestaurantViewScreen extends StatelessWidget {
  const RestaurantViewScreen({super.key, required this.element});

  final RestaurantModel element;

  @override
  Widget build(BuildContext context) {
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
              Container(
                height: 240,
                decoration: BoxDecoration(
                    color: PColors.primary,
                    borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(element.image),
                    // height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star_border_outlined,
                        color: PColors.primary,
                      ),
                      Text(element.rating),
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
                      Text(element.time),
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
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
              Text(
                element.name,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: PColors.black),
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                      child: Divider(
                    color: PColors.primary,
                    height: 3,
                    endIndent: 20,
                  ),),
                  Text(
                    "MENU",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: PColors.darkGrey, letterSpacing: 3),
                  ),
                  const Expanded(
                    child: Divider(
                      indent: 20,
                      color: PColors.primary,
                      height: 3,
                    ),
                  ),
                ],
              ),

              // All Restaurant Items
            ],
          ),
        ),
      ),
    );
  }
}
