import 'package:firebase_ecommerce/features/shop/screens/home/widgets/caregory_item.dart';
import 'package:firebase_ecommerce/utils/constants/image_strings.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 9,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? TSizes.defaultSpacing : TSizes.spaceBtwItems,
              right: index == 8 ? TSizes.defaultSpacing : 0.0,
            ),
            child: TVerticalImageText(
              image: TImages.darkLogo,
              title: 'Category $index',
              // bgColor: TColors.dark,
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
