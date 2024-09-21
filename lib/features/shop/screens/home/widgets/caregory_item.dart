import 'package:firebase_ecommerce/utils/constants/colors.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? bgColor;
  final void Function()? onTap;
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.bgColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          //Image
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: dark ? TColors.dark : TColors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: dark ? TColors.white : TColors.black,
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          //Text
          SizedBox(
            width: 56,
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelMedium!.apply(
                    color: textColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
