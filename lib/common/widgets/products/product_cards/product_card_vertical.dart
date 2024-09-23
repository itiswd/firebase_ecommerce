import 'package:firebase_ecommerce/common/styles/shadow_style.dart';
import 'package:firebase_ecommerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:firebase_ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:firebase_ecommerce/common/widgets/images/t_rounded_image.dart';
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
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
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
                const Padding(
                  padding: EdgeInsets.all(TSizes.sm),
                  child: TRoundedImage(
                    imageUrl: TImages.nike,
                    applyBorderRadius: true,
                  ),
                ),
                //Sale
                Positioned(
                  top: 12,
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
                  ),
                ),
              ],
            ),
          ),
          //Details
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title
                const TProductTitle(title: 'Nikeshoes'),
                const SizedBox(height: TSizes.sm),
                //Price
                Text(
                  '\$ 15.00',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.apply(color: TColors.primary),
                ),
              ],
            ),
          ),
          const SizedBox(height: TSizes.sm),
          //Rating
          Row(
            children: [
              const Icon(
                Iconsax.star,
                color: TColors.secondary,
              ),
              const SizedBox(width: TSizes.sm),
              Text(
                '4.5',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(color: TColors.secondary),
              ),
              const Spacer(),
              Text(
                '20 reviews',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(color: TColors.secondary),
              ),
            ],
          ),
          const SizedBox(height: TSizes.sm),
          //Add to cart
          Row(
            children: [
              Text(
                'Add to cart',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(color: TColors.secondary),
              ),
              const Spacer(),
              const Icon(
                Iconsax.add,
                color: TColors.secondary,
              ),
            ],
          ),
          const SizedBox(height: TSizes.sm),
          Row(children: [
            Text(
              'View Details',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.apply(color: TColors.secondary),
            ),
            const Spacer(),
            if (!dark)
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.arrow_right_1,
                  color: TColors.secondary,
                ),
              ),
            if (dark)
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.arrow_right_1,
                  color: TColors.secondary,
                ),
              ),
          ])
        ],
      ),
    );
  }
}
