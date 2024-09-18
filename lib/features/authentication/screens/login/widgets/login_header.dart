import 'package:firebase_ecommerce/utils/constants/image_strings.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/constants/text_strings.dart';
import 'package:firebase_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            height: 150,
            dark ? TImages.lightLogo : TImages.darkLogo,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            TTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: TSizes.sm),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            TTexts.loginSubTitle.capitalize!,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
