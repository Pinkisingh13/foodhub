import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DrawerController());
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text("Profile"),
          ),
          ListTile(
            title: const Text('Home'),
            selected: controller.selectedIndex.value == 0,
            onTap: () {
              // Update the state of the app
              controller.changeIndex(0);

              // Then close the drawer
              Get.back();
            },
          ),
          ListTile(
            title: const Text('Home'),
            selected: controller.selectedIndex.value == 1,
            onTap: () {
              // Update the state of the app
              controller.changeIndex(1);
              // Then close the drawer
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}

class DrawerController extends GetxController {
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
