import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/controllers/searchbar/search_controller.dart';
import 'package:foodhub/drawer/main_drawer.dart';
import 'package:foodhub/features/shop/screens/home/widgets/restaurant_details/all_restro.dart';
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
              PAllRestaurants(
          
              ),
            ],
          ),
        ),
      ),
    );
  }
}
