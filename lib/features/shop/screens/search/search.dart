import 'package:flutter/material.dart';
import 'package:foodhub/common/widgets/row_title_divider/row_titlewith_divider.dart';
import 'package:foodhub/features/shop/controllers/searchbar/search_controller.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeSearchController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          PTexts.searchScreenTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
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
              Container(
                child: Column(
                  children: [
                    const RowTitleWithDivider(title: "Popular Cuisins"),
                    SizedBox(
                      height: 130,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [

                          InkWell(
                            onTap: (){},
                            child: const Image(
                              image: AssetImage(PImages.productImage1),
                              height: 80,
                              width: 80,
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: const Image(
                              image: AssetImage(PImages.productImage2),
                              height: 80,
                              width: 80,
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: const Image(
                              image: AssetImage(PImages.productImage3),
                              height: 80,
                              width: 80,
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: const Image(
                              image: AssetImage(PImages.productImage4),
                              height: 80,
                              width: 80,
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: const Image(
                              image: AssetImage(PImages.productImage5),
                              height: 80,
                              width: 80,
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: const Image(
                              image: AssetImage(PImages.productImage6),
                              height: 80,
                              width: 80,
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: const Image(
                              image: AssetImage(PImages.productImage7),
                              height: 80,
                              width: 80,
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: const Image(
                              image: AssetImage(PImages.productImage8),
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
