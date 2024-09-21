import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:firebase_ecommerce/features/shop/controllers/home/carousel_controller.dart';
import 'package:firebase_ecommerce/utils/constants/colors.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomePromoSlider extends StatelessWidget {
  const THomePromoSlider({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        //Image
        CarouselSlider(
            options: CarouselOptions(
              height: 180,
              viewportFraction: 0.83,
              onPageChanged: (index, reason) =>
                  controller.updatePageIndicator(index),
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: images.map((url) => TRoundedImage(imageUrl: url)).toList()),
        const SizedBox(height: TSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                images.length,
                (index) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.only(right: 4.0),
                    decoration: BoxDecoration(
                      color: controller.currentPageIndex.value == index
                          ? TColors.primary
                          : TColors.darkGrey,
                      shape: BoxShape.circle,
                    ),
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
