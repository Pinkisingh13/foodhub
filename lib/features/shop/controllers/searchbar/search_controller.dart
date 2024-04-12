import 'dart:async';
import 'package:get/get.dart';

class HomeSearchController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    Timer.periodic(const Duration(seconds: 3), (timer) {
      selectedIndex.value = (selectedIndex.value + 1) % hintTextList.length;
    });
  }

  final hintTextList = [
    "Cake",
    "Biryani",
    "Pizza",
    "Paratha",
  ];
}
