import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodhub/common/widgets/column_image/itemlist.dart';
import 'package:foodhub/common/widgets/login_signup/form_divider.dart';
import 'package:foodhub/common/widgets/row_title_divider/row_titlewith_divider.dart';
import 'package:foodhub/features/shop/controllers/searchbar/search_controller.dart';
import 'package:foodhub/main_drawer.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:foodhub/utils/device/device_utility.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';
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
              Column(
                children: [
                  RowTitleWithDivider(title: PTexts.categoryOfRestroTitle),
                  const SizedBox(
                    height: PSizes.spaceBtwItems,
                  ),
                  Container(
                    // color: PColors.primary,
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          children: [
                            // Image
                            Container(
                              width: 140,
                              decoration: BoxDecoration(
                                  color: PColors.primary,
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const Image(
                                  image: AssetImage(PImages.restroImage1),
                                ),
                              ),
                            ),

                            /// Restraunt Name, rating, time, category..
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Berco's- If You Love Chinese", style: Theme.of(context).textTheme.bodyLarge
                                !.copyWith(color: PColors.black),),
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.star,
                                        color: PColors.white,
                                        size: 17,
                                      ),
                                      decoration: BoxDecoration(color: PColors.tertiary, borderRadius: BorderRadius.circular(40)),
                                      height: 20,
                                      width: 20,
                                    ),
                                    SizedBox(width: PSizes.xs,),
                                    Text("4.5"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
