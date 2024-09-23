import 'package:firebase_ecommerce/utils/constants/colors.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCircularIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData icon;
  final Color? color, bgColor;
  final void Function()? onPressed;

  const TCircularIcon({
    super.key,
    required this.dark,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.bgColor,
    this.onPressed,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor ??
            (dark
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Icon(
              icon,
              color: color,
              size: size,
            ),
          ),
        ),
      ),
    );
  }
}
