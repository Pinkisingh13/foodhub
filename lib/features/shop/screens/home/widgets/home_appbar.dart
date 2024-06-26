import 'package:flutter/material.dart';
import 'package:foodhub/features/shop/screens/cart/cart.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/device/device_utility.dart';
import 'package:get/get.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Deliever to",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: PSizes.xs,
          ),
          Text(
            "New Colony, Mahavirsthan",
            style: Theme.of(context).textTheme.bodySmall,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      leading: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: PSizes.xs),
            child: IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Image(
                image: AssetImage(PImages.drawerImage),
              ),
            ),
          );
        },
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: PSizes.md),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: PColors.black,
            borderRadius: BorderRadius.circular(60),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(60),
            onTap: () {
              Get.to(() => const CartScreen());
            },
            child: const Image(
              image: AssetImage(PImages.cartImage),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(PDeviceUtils.getAppBarHeight());
}
