import 'package:firebase_ecommerce/utils/constants/image_strings.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/constants/text_strings.dart';
import 'package:firebase_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              CupertinoIcons.clear,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpacing),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Image
                Image(
                  width: THelperFunctions.screenWidth() * 0.6,
                  image: const AssetImage(
                    TImages.verify,
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                //Title and subtitle
                Text(
                  TTexts.confirmeEmailTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(
                  'itiswd@gmail.com',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(
                  TTexts.confirmeEmailSubTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text(TTexts.continueText)),
                ),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(TTexts.resendEmail)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
