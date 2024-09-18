import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          width: THelperFunctions.screenWidth(),
          height: THelperFunctions.screenHeight() * 0.6,
          fit: BoxFit.fill,
          image,
        ),
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpacing),
          child: Column(
            children: [
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
