import 'package:firebase_ecommerce/features/authentication/screens/login/login.dart';
import 'package:firebase_ecommerce/features/onboarding/screens/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthRepo extends GetxController {
  static AuthRepo get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();

  // Called from main.dart
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirecr();
  }

  // Show relevant screens
  void screenRedirecr() async {
    deviceStorage.writeIfNull('isFirstTime', true);
    if (kDebugMode) {
      debugPrint('===================Get Storage==================');
      debugPrint(deviceStorage.read('isFirstTime').toString());
    }
    deviceStorage.read('isFirstTime') == true
        ? Get.offAll(() => const OnBoardingScreen())
        : Get.offAll(() => const Login());
  }
}
