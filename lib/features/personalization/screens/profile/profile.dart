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
      ),
      body:  Padding(
        padding: const EdgeInsets.all(PSizes.defaultSpace),
        child: Column(
          children: [
            const DrawerHeaderText(),
            const SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            const Divider(),
            const SizedBox(
              height: PSizes.spaceBtwSections,
            ),
            PProfileMenu(
              title: PTexts.fullName,
              value: "Pinki singh",
              onPressed: (){},
              
            ),
            const SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            PProfileMenu(
              title: PTexts.phoneNo,
              value: "8402399876",
              onPressed: (){},
            ),
            const SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            PProfileMenu(
              title: PTexts.email,
              value: "web.pinkisingh@gmail.com",
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
