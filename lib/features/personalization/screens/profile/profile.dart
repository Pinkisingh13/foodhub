import 'package:flutter/material.dart';
import 'package:foodhub/drawer/widgets/drawer_header.dart';
import 'package:foodhub/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:foodhub/utils/constants/sizes.dart';
import 'package:foodhub/utils/constants/text_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Row(
              children: [
                Icon(
                  Icons.edit,
                  size: 15,
                ),
                Text("edit"),
              ],
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(PSizes.defaultSpace),
        child: Column(
          children: [
            DrawerHeaderText(),
            SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            Divider(),
            SizedBox(
              height: PSizes.spaceBtwSections,
            ),
            PProfileMenu(
              title: PTexts.fullName,
              value: "Pinki singh",
            ),
            SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            PProfileMenu(
              title: PTexts.phoneNo,
              value: "8402399876",
            ),
            SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            PProfileMenu(
              title: PTexts.email,
              value: "web.pinkisingh@gmail.com",
            ),
          ],
        ),
      ),
    );
  }
}
