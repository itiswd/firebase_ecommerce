import 'package:firebase_ecommerce/common/widgets/custom_shapes/header_container.dart';
import 'package:firebase_ecommerce/common/widgets/custom_shapes/search_container.dart';
import 'package:firebase_ecommerce/common/widgets/layouts/wrap_layout.dart';
import 'package:firebase_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:firebase_ecommerce/common/widgets/texts/section_header.dart';
import 'package:firebase_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:firebase_ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:firebase_ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:firebase_ecommerce/utils/constants/colors.dart';
import 'package:firebase_ecommerce/utils/constants/image_strings.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //Search bar
                  TSearchBar(text: 'Type here to search...'),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //Categories
                  Column(
                    children: [
                      //Header
                      TSectionHeader(
                        textColor: TColors.white,
                        title: 'Popular Categories',
                        showActionButton: false,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),
                      //Categories
                      THomeCategories(),
                    ],
                  ),
                ],
              ),
            ),
            //Banners
            const THomePromoSlider(
              images: [
                TImages.banner1,
                TImages.banner2,
                TImages.banner3,
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            //Popular Products
            const TSectionHeader(
              title: 'Popular Products',
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            TWrapLayout(
              itemCount: 8,
              itemBuilder: (index) {
                return const ProductCardVertical();
              },
            ),
            const SizedBox(height: TSizes.gridViewSpacing),
          ],
        ),
      ),
    );
  }
}
