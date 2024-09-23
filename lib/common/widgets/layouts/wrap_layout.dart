import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TWrapLayout extends StatelessWidget {
  final int itemCount;
  final Widget Function(int) itemBuilder;

  const TWrapLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: TSizes.gridViewSpacing,
        runSpacing: TSizes.gridViewSpacing,
        children: List.generate(
          itemCount,
          itemBuilder,
        ));
  }
}
