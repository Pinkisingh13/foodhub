import 'package:flutter/material.dart';
import 'package:foodhub/drawer/widgets/drawer_container.dart';
import 'package:foodhub/drawer/widgets/drawer_element.dart';
import 'package:foodhub/drawer/widgets/drawer_header.dart';
import 'package:foodhub/features/personalization/screens/address/address.dart';
import 'package:foodhub/features/personalization/screens/my_order/my_order.dart';
import 'package:foodhub/features/personalization/screens/profile/profile.dart';
import 'package:foodhub/features/shop/screens/payment/payment.dart';
import 'package:foodhub/features/shop/screens/wishlist/wishlist.dart';
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
          const DrawerHeader(
            decoration: BoxDecoration(
              color: PColors.white,
            ),
            child: DrawerHeaderText(),
          ),
          DrawerContainer(
            height: 100,
            children: [
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(0);
                  Get.back();
                  Get.to(
                      () => controller.screens[controller.selectedIndex.value]);
                },
                image: PImages.personIcon,
                title: "Personal Info",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(1);
                  Get.back();
                  Get.to(
                      () => controller.screens[controller.selectedIndex.value]);
                },
                image: PImages.addressIcon,
                title: "Adresses",
              ),
            ],
          ),
          DrawerContainer(
            height: 250,
            children: [
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(2);
                  Get.back();
                  Get.to(
                      () => controller.screens[controller.selectedIndex.value]);
                },
                image: PImages.wishlistIcon,
                title: "Wishlist",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(3);
                  Get.back();
                  Get.to(
                      () => controller.screens[controller.selectedIndex.value]);
                },
                image: PImages.cartIconIcon,
                title: "My Orders",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(4);
                  Get.back();
                  Get.to(
                      () => controller.screens[controller.selectedIndex.value]);
                },
                image: PImages.paymentIcon,
                title: "Payment Method",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(5);
                  Get.back();
                },
                image: PImages.settingIcon,
                title: "Settings",
              ),
              PDrawerElement(
                onTap: () {
                  controller.changeIndex(6);
                  Get.back();
                  // Get.to(
                  //     () => controller.screens[controller.selectedIndex.value]);
                },
                image: PImages.notificationIcon,
                title: "Notification",
              ),
            ],
          ),
          DrawerContainer(
            height: 100,
            children: [
              PDrawerElement(
                image: PImages.logoutIcon,
                title: "Log out",
                onTap: () {
                  controller.changeIndex(7);
                  // Log out
                },
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

  final screens = [
    const ProfileScreen(),
    const UserAddressScreen(),
    const WishlistScreen(),
    const MyOrder(),
    const PaymentScreen(isShowBottomMenu: false),
  ];
}
