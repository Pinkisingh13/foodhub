import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/row_title_divider/row_titlewith_divider.dart';
import 'package:foodhub/features/shop/controllers/searchbar/search_controller.dart';
import 'package:foodhub/drawer/main_drawer.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/features/shop/screens/home/widgets/cliprect_container_image.dart';
import 'package:foodhub/features/shop/screens/home/widgets/restaurant_details/all_restro.dart';
import 'package:foodhub/features/shop/screens/home/widgets/restaurant_details/rating_time.dart';
import 'package:foodhub/features/shop/screens/restaurant_view/restaurant_details.dart';
import 'package:foodhub/features/shop/screens/search/search.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'widgets/categoryofitems.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeSearchController());
    return Scaffold(
      appBar: const HomeAppbar(),
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// --- SearchBar ---
              Obx(
                () => TextField(
                  canRequestFocus: false,
                  onTap: () {
                    Get.to(() => const SearchScreen());
                  },
                  expands: false,
                  scribbleEnabled: true,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: PColors.black),
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 24,
                    ),
                    alignLabelWithHint: true,
                    hintText:
                        "Search for '${controller.hintTextList[controller.selectedIndex.value]}'",
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    isDense: true,
                  ),
                ),
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              /// Category of items
              const PCategoryOfItems(),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              /// Category of restaurants
              const PAllRestaurants(),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              /// Heading
              const RowTitleWithDivider(title: "Featured Restaurant"),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// Restaurant List
              for (final item in restaurantDetails)
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: PSizes.spaceBtwSections),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => RestaurantViewScreen(e: item));
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
                ),
            ],
          ),
        ),
      ),
    );
  }
}
