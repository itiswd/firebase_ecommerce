import 'package:firebase_ecommerce/common/widgets/loaders/animation_loader.dart';
import 'package:firebase_ecommerce/utils/constants/colors.dart';
import 'package:firebase_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFullScreenLoader {
  static void openLoader(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (context) {
        return PopScope(
          canPop: false,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: THelperFunctions.isDarkMode(Get.context!)
                ? TColors.dark
                : TColors.white,
            child: Column(
              children: [
                const SizedBox(height: 250),
                TAnimationLoader(text: text, animation: animation),
              ],
            ),
          ),
        );
      },
    );
  }

  static void closeLoader() {
    Get.back();
  }
}
