import 'package:firebase_ecommerce/common/styles/shadow_style.dart';
import 'package:firebase_ecommerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:firebase_ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:firebase_ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:firebase_ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:firebase_ecommerce/common/widgets/texts/product_title.dart';
import 'package:firebase_ecommerce/utils/constants/colors.dart';
import 'package:firebase_ecommerce/utils/constants/image_strings.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.black : TColors.white,
        ),
        child: Column(
          children: [
            //Thumbnail, Whishlist, Discount
            TRoundedContainer(
              width: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              bgColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Thumbnail
                  Padding(
                    padding: const EdgeInsets.all(TSizes.sm),
                    child: TRoundedImage(
                      imageUrl: TImages.nike,
                      bgColor: dark ? TColors.dark : TColors.light,
                      applyBorderRadius: true,
                    ),
                  ),
                  //Sale
                  Positioned(
                    top: 8,
                    left: 0,
                    child: TRoundedContainer(
                      borderRadius: TSizes.sm,
                      bgColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.apply(color: TColors.black),
                      ),
                    ),
                  ),
                  //Favorite
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      dark: dark,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      size: TSizes.iconMd,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            //Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Title
                  const TProductTitle(
                    title: 'Nikeshoes',
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 4),
                  //Brand
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Nike',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: TSizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: Colors.blue,
                        size: TSizes.iconSm,
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      //Price
                      const TProductPriceText(
                        price: '120.0',
                        // isLarge: true,
                      ),
                      const Spacer(),
                      //Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.primary,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.cardRadiusMd),
                          ),
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
