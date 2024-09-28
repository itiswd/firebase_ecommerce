import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ecommerce/app.dart';
import 'package:firebase_ecommerce/data/repositories/auth/auth_repo.dart';
import 'package:firebase_ecommerce/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  // Widget binding
  WidgetsFlutterBinding.ensureInitialized();

  // GetX Local Storage
  await GetStorage.init();

  // Await splash until app is ready
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding.instance);

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthRepo()));

  runApp(const MyApp());
}
