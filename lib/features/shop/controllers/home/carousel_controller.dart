import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  //Variables
  Rx<int> currentPageIndex = 0.obs;

  //Update current index of dots
  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }
}
