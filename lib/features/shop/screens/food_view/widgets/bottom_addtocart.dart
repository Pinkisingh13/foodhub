import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: PHelperFunctions.screenHeight() / 5,
      decoration: const BoxDecoration(
          color: PColors.containerColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const SizedBox(
                width: PSizes.spaceBtwSections,
              ),
              Text(
                price,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                width: PSizes.spaceBtwSections * 4,
              ),
              Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                    // color: PColors.secondary,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: IconButton(
                        style: IconButton.styleFrom(          
                            backgroundColor: PColors.tertiary),
                        onPressed: () {},
                        icon: const Icon(
                          size: 20,
                         applyTextScaling: true,
                          Icons.remove,
                          color: PColors.white,
                        ),
                      ),
                    ),
                    Text(
                      "2",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: IconButton(
                       
                        style: IconButton.styleFrom(
                            backgroundColor: PColors.tertiary),
                        onPressed: () {},
                        icon: const Icon(
                          size: 20,

                          Icons.add,
                          color: PColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: PHelperFunctions.screenHeight() / 4,
            height: 53,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Add to cart",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
