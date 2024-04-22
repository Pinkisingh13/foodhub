import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:foodhub/features/authentication/screens/location/location.dart';
import 'package:foodhub/features/authentication/screens/login/login.dart';
import 'package:foodhub/features/authentication/screens/onboarding/onboaring.dart';
import 'package:foodhub/features/authentication/screens/signup/signup.dart';
import 'package:foodhub/features/authentication/screens/signup/verify_email.dart';
import 'package:foodhub/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:foodhub/utils/exceptions/firebase_exceptions.dart';
import 'package:foodhub/utils/exceptions/format_exceptions.dart';
import 'package:foodhub/utils/exceptions/platform_exceptions.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepo extends GetxController {
  static AuthenticationRepo get instance => Get.find();

  // variables
  final deviceStorage = GetStorage();
  final auth = FirebaseAuth.instance;

  // Called from main.dart on app launch
  @override
  void onReady() {
    super.onReady();
    Timer(const Duration(seconds: 5), () {
      screenRedirect();
    });
  }

  // Function to show relevant screen
  void screenRedirect() async {
    final user = auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const LocationScreen());
      } else {
        Get.offAll(() => VerifyEmailScreen(
              email: auth.currentUser?.email,
            ));
      }
    } else {
      // Local Storage
      deviceStorage.writeIfNull("isFirstTime", true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const Signup())
          : Get.offAll(() => const OnBoardingScreen());
    }
  }

  /// [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on PlatformException catch (e) {
      throw PPlatformException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException {
      throw const PFormatException();
    } catch (e) {
      throw "something went wrong";
    }
  }

  /// [EmailVerification] - EMAIL VERIFICATION
  Future<void> sendEmailVerification() async {
    try {
      await auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on PlatformException catch (e) {
      throw PPlatformException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException {
      throw const PFormatException();
    } catch (e) {
      throw "something went wrong";
    }
  }

  // LogOut
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on PlatformException catch (e) {
      throw PPlatformException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException {
      throw const PFormatException();
    } catch (e) {
      throw "something went wrong";
    }
  }
}
