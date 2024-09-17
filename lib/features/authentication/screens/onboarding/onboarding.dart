import 'package:firebase_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:firebase_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:firebase_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:firebase_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:firebase_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:firebase_ecommerce/utils/constants/image_strings.dart';
import 'package:firebase_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            scrollDirection: Axis.horizontal,
            controller: controler.pageController,
            onPageChanged: controler.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onboarding1,
                title: TTexts.onboardingTitle1,
                subTitle: TTexts.onBoardingSubTitlel,
              ),
              OnBoardingPage(
                image: TImages.onboarding2,
                title: TTexts.onboardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onboarding3,
                title: TTexts.onboardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //Skip Button
          const OnBoardingSkip(),
          //Dot Navigation SmoothPageIndicator
          const OnBoardingNavigation(),
          //Circular Button
          const OnBoardingCircularButton(),
        ],
      ),
    );
  }
}
