import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  //Update current index of pages
  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  //Jump to the specific dot selected page
  void dotNavigateClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //Jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const Login());
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  //Jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }
}
