import 'package:flutter/services.dart';
import 'package:foodhub/features/personalization/models/user_model.dart';
import 'package:foodhub/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:foodhub/utils/exceptions/firebase_exceptions.dart';
import 'package:foodhub/utils/exceptions/format_exceptions.dart';
import 'package:foodhub/utils/exceptions/platform_exceptions.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepo extends GetxController {
  static UserRepo get instance => UserRepo();

  // Variable
  final FirebaseFirestore _db = FirebaseFirestore.instance;

/// Function to save user data to FireStore
Future<void> saveUserData(UserModel user) async{

  try {
    await _db.collection("Users").doc(user.id).set(user.toJson());
  } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const PFormatException();
    } on  PlatformException catch (e) {
      throw PPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
}

}
