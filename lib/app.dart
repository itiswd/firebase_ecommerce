import 'package:firebase_ecommerce/features/onboarding/screens/onboarding.dart';
import 'package:firebase_ecommerce/utils/device/device_utility.dart';
import 'package:firebase_ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TDeviceUtils.hideStatusBar();
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}
