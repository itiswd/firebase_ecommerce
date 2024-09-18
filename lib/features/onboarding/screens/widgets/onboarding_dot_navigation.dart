import 'package:firebase_ecommerce/features/onboarding/controllers/onboarding_controller.dart';
import 'package:firebase_ecommerce/utils/constants/colors.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/device/device_utility.dart';
import 'package:firebase_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 24.0,
      left: TSizes.defaultSpacing,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigateClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.white : TColors.dark,
          dotHeight: 6.0,
        ),
      ),
    );
  }
}
