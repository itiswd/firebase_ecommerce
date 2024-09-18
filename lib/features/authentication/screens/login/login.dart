import 'package:firebase_ecommerce/common/styles/spacing_styles.dart';
import 'package:firebase_ecommerce/common/widgets/form_divider.dart';
import 'package:firebase_ecommerce/common/widgets/social_buttons.dart';
import 'package:firebase_ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:firebase_ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingAppBarHeight,
          child: Column(
            children: [
              //Logo, title and subtitle
              const TLoginHeader(),
              //Login form
              const TLoginForm(),
              //Divider
              TFormDivider(
                dividerText: TTexts.orsigninwith.capitalize!,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Footer
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
