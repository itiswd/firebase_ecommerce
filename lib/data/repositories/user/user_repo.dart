import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ecommerce/features/authentication/models/user_model.dart';
import 'package:firebase_ecommerce/utils/helpers/firemase_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepo extends GetxController {
  static UserRepo get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Save user data in firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('Users').doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseExceptions(e.code);
    } on FormatException catch (_) {
      throw TFirebaseFormatExceptions;
    } on PlatformException catch (e) {
      throw TFirebasePlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong, Please try again later.';
    }
  }
}
