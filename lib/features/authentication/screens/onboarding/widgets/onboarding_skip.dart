import 'package:firebase_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:firebase_ecommerce/utils/constants/colors.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpacing,
      child: TextButton(
        onPressed: OnBoardingController.instance.skipPage,
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: TColors.primary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
