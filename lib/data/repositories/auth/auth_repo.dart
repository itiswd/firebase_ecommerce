import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ecommerce/features/authentication/screens/login/login.dart';
import 'package:firebase_ecommerce/features/onboarding/screens/onboarding.dart';
import 'package:firebase_ecommerce/utils/helpers/firemase_exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthRepo extends GetxController {
  static AuthRepo get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // Called from main.dart
  @override
  void onReady() {
    // Remove splash screen
    FlutterNativeSplash.remove();
    // Rediect to relevant screen
    screenRedirect();
  }

  // Show relevant screens
  void screenRedirect() async {
    deviceStorage.writeIfNull('isFirstTime', true);
    if (kDebugMode) {
      debugPrint('===================Get Storage==================');
      debugPrint(deviceStorage.read('isFirstTime').toString());
    }
    deviceStorage.read('isFirstTime') == true
        ? Get.offAll(() => const OnBoardingScreen())
        : Get.offAll(() => const Login());
  }

  //[Email Authentication] Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthExceptions(e.code);
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
