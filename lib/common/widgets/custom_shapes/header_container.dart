import 'package:firebase_ecommerce/common/widgets/edged_widgets.dart/custom_clippath.dart';
import 'package:firebase_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperParh(),
      child: SizedBox(
        height: 400,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              color: TColors.primary,
              padding: const EdgeInsets.all(0),
            ),
            Positioned(
              top: -150,
              right: -200,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: TColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: TColors.white.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
