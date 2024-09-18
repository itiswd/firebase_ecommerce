import 'package:firebase_ecommerce/common/widgets/auth/form_divider.dart';
import 'package:firebase_ecommerce/common/widgets/auth/social_buttons.dart';
import 'package:firebase_ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:firebase_ecommerce/features/authentication/screens/signup/widgets/signup_header.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/constants/text_strings.dart';
import 'package:firebase_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title and subtitle
              const TSignUpHeader(),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Form
              TSignUpForm(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Divider
              const TFormDivider(
                dividerText: TTexts.orsignUpwith,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Social buttons
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
