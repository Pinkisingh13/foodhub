import 'package:flutter/material.dart';
import 'package:foodhub/bindings/general_binding.dart';
import 'package:foodhub/features/authentication/screens/splash/splash.dart';
import 'package:foodhub/utils/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
      title: "FoodHub",
      theme: PAppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}