import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/helpers/helper_functions.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PSizes.defaultSpace),
            child: Column(
              children: [
                Container(
                  // color: PColors.primary,
                  height: 100,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(PImages.cash),
                          ),
                          Text("Cash"),
                        ],
                      ),
                      SizedBox(
                        width: PSizes.spaceBtwItems,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(PImages.visa),
                          ),
                          Text("Visa"),
                        ],
                      ),
                      SizedBox(
                        width: PSizes.spaceBtwItems,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(PImages.masterCard),
                          ),
                          Text("Master Card"),
                        ],
                      ),
                      SizedBox(
                        width: PSizes.spaceBtwItems,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(PImages.paypal),
                          ),
                          Text("PayPal"),
                        ],
                      ),
                    ],
                  ),
                ),
                // const SizedBox(
                //   height: PSizes.spaceBtwSections,
                // ),
                const Image(
                  image: AssetImage(PImages.noMasterCard),
                  height: 300,
                  width: 300,
                ),
                const SizedBox(
                  height: PSizes.spaceBtwItems,
                ),
                SizedBox(
                  width: PHelperFunctions.screenHeight() / 2,
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: PColors.primary)),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: PColors.primary,
                    ),
                    label: Text(
                      "ADD NEW",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: PColors.primary),
                    ),
                  ),
                ),
                const SizedBox(height: PSizes.spaceBtwSections,),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height:150,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 230, 240, 250), borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Total: ${foodList[0].price}", style: Theme.of(context).textTheme.titleMedium,),
            SizedBox(
              width: PHelperFunctions.screenHeight()/3,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Pay and Confirm"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
