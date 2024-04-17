import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/features/shop/screens/cart/widgets/add_to_cart_design.dart';
import 'package:foodhub/features/shop/screens/payment/payment.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 180,
                child: Card(
                  color: PColors.containerColor,
                  child: Column(
                    children: [
                      AddToCartItemDesign(),
                      Divider(),
                      AddToCartItemDesign(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections / 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Type",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: PSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 80,
                    child: Card(
                      color: PColors.containerColor,
                      child: Center(
                        child: Text(
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: PColors.darkerGrey),
                            textAlign: TextAlign.center,
                            "Standard delivery auto-selected since Eco-Saver delivery is currently unavailable,"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections / 2,
              ),

              /// --- Offers & Benefits
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Offers & Benefits",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.all(PSizes.sm),
                    decoration: BoxDecoration(
                        color: PColors.containerColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Text(
                            "Promo code",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: PColors.darkGrey),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              color: PColors.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Apply",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: PColors.white,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections / 2,
              ),

              // --- Bill Details ---
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bill Details",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(
                    height: 250,
                    child: Card(
                      color: const Color.fromARGB(255, 240, 247, 255),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Item Total"),
                                    Text(foodList[0].price)
                                  ],
                                ),
                                const SizedBox(height: PSizes.spaceBtwItems/2,),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Delivery partner fee"),
                                    Text("17.00")
                                  ],
                                ),
                                const Divider(
                                  // endIndent: PSizes.spaceBtwSections,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Delivery Tip"),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text("Add tip")),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Platform fee"),
                                    Text("17.00")
                                  ],
                                ),
                                const Divider(
                                  endIndent: PSizes.spaceBtwSections * 6,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("GST and Restaurant Charges"),
                                    Text("41.97"),
                                  ],
                                ),
                                const Divider(
                                  endIndent: PSizes.spaceBtwSections * 3,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(PSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            // Get.offAll(() => const ChcekOutScreen());
            Get.to(() => const PaymentScreen());
          },
          child: const Text('Place Order'),
        ),
      ),
    );
  }
}
