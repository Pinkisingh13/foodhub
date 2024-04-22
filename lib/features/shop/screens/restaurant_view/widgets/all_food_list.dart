import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/screens/food_view/food_view.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import '../../../models/restaurant/restaurant.dart';

class PAllFoodList extends StatelessWidget {
  const PAllFoodList({
    super.key,
    required this.filteredList,
  });

  final List<FoodModel> filteredList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...filteredList.map(
          (e) => Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    useSafeArea: true,
                    
                    context: context,
                    builder: (context) {
                      return FoodDetailScreen(foodmodel: e,);
                    },
                  );
                  // Get.to(
                  //   () => FoodDetailScreen(
                  //     foodmodel: e,
                  //   ),
                  // );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Food Deatils
                    SizedBox(
                      width: 170,
                      height: 260,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            e.foodName,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(
                            height: PSizes.spaceBtwItems,
                          ),
                          Text(
                            e.price,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: PColors.black),
                          ),
                          const SizedBox(
                            height: PSizes.spaceBtwItems,
                          ),
                          Text(
                            e.description,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),

                    // Image
                    Stack(
                      children: [
                        Container(
                          height: 170,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(e.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: PSizes.sm / 7,
                          left: 20,
                          right: 20,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: 38,
                              width: 90,
                              decoration: BoxDecoration(
                                color: PColors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "ADD",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: PColors.accent,
                                        fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
