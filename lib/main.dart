import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ecommerce/app.dart';
import 'package:firebase_ecommerce/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) {});
  runApp(const MyApp());
}
