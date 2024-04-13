import 'package:flutter/material.dart';
import 'package:foodhub/drawer/widgets/drawer_container.dart';
import 'package:foodhub/drawer/widgets/drawer_element.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainDrawerController());
    return Drawer(
      backgroundColor: PColors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: PColors.white,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      child: Image(
                        image: AssetImage(PImages.appLogo),
                      ),
                    ),
                  ),
                  Text(
                    "Pinki Singh",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          DrawerContainer(
            height: 100,
            children: [
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(0);
                  Get.back();
                },
                image: PImages.personIcon,
                title: "Personal Info",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(1);
                  Get.back();
                },
                image: PImages.addressIcon,
                title: "Adresses",
              ),
            ],
          ),
          DrawerContainer(
            height: 200,
            children: [
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(2);
                  Get.back();
                },
                image: PImages.cartIconIcon,
                title: "Cart",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(3);
                  Get.back();
                },
                image: PImages.wishlistIcon,
                title: "Wishlist",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(4);
                  Get.back();
                },
                image: PImages.notificationIcon,
                title: "Notifications",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(5);
                  Get.back();
                },
                image: PImages.paymentIcon,
                title: "Payment Method",
              ),
            ],
          ),
          DrawerContainer(
            height: 150,
            children: [
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(6);
                  Get.back();
                },
                image: PImages.fNqIcon,
                title: "FAQs",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(7);
                  Get.back();
                },
                image: PImages.userReviewIcon,
                title: "User Reviews",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(8);
                  Get.back();
                },
                image: PImages.settingIcon,
                title: "Settings",
              ),
            ],
          ),
          DrawerContainer(
            height: 60,
            children: [
              PDrawerElement(
                image: PImages.logoutIcon,
                title: "Log out",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}




//  Drawer Controller 
class MainDrawerController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changeIndex(int value) {
    selectedIndex.value = value;
  }

  // final screens = [
  //   Container(
  //     color: Colors.blue,
  //   ),
  //   Container(
  //     color: Colors.red,
  //   )
  // ];
}
