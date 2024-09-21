import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool goBack;
  final List<Widget>? actions;
  final IconData? icon;
  final void Function()? onLeadingTap;

  const TAppBar({
    super.key,
    this.title,
    this.goBack = false,
    this.actions,
    this.icon,
    this.onLeadingTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: goBack,
        title: title,
        actions: actions,
        leading: goBack
            ? IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Iconsax.arrow_left),
              )
            : icon == null
                ? null
                : IconButton(
                    onPressed: onLeadingTap,
                    icon: Icon(icon),
                  ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
