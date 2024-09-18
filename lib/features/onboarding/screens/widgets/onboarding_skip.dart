import 'package:firebase_ecommerce/features/onboarding/controllers/onboarding_controller.dart';
import 'package:firebase_ecommerce/utils/constants/colors.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/device/device_utility.dart';
import 'package:firebase_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpacing,
      child: TextButton(
        onPressed: OnBoardingController.instance.skipPage,
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: dark ? TColors.primary : TColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
        ),
      ),
    );
  }
}
