import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodhub/app.dart';
import 'package:foodhub/data/repositories/authentication/authentication.dart';
import 'package:foodhub/firebase_options.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {

  // Widget Bindings
  WidgetsFlutterBinding.ensureInitialized();
  // Get Storage
  await GetStorage.init();

  // Firebase Initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthenticationRepo()));
  runApp(const MyApp());
}
