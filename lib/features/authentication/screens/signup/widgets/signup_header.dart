import 'package:firebase_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class TSignUpHeader extends StatelessWidget {
  const TSignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TTexts.signUpTitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
