import 'package:flutter/material.dart';
import 'package:foodhub/features/personalization/screens/address/add_new_address.dart';
import 'package:foodhub/features/personalization/screens/address/widgets/single_address.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:get/get.dart';


class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Get.to(() => const AddNewAddressScreen()),
      //   backgroundColor: PColors.primary,
      //   child: const Icon(
      //     Iconsax.add,
      //     color: PColors.white,
      //   ),
      // ),
      appBar: AppBar(
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              const PSingleAddress(isSelectedAddress: true),
              const PSingleAddress(isSelectedAddress: false),
              const PSingleAddress(isSelectedAddress: true),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const AddNewAddressScreen());
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color.fromARGB(255, 12, 214, 1))),
                  child: Text(
                    "Add New Address",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: const Color.fromARGB(255, 12, 214, 1)),
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
