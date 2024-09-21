import 'package:firebase_ecommerce/common/styles/spacing_styles.dart';
import 'package:firebase_ecommerce/features/authentication/screens/login/login.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/constants/text_strings.dart';
import 'package:firebase_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Success extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const Success(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: TSpacingStyle.paddingAppBarHeight,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image
              Image(
                width: THelperFunctions.screenWidth() * 0.6,
                image: AssetImage(
                  image,
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Title and subtitle
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => const Login());
                  },
                  child: const Text(TTexts.continueText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
