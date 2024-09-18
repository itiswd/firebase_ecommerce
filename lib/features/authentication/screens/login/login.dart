import 'package:firebase_ecommerce/common/styles/spacing_styles.dart';
import 'package:firebase_ecommerce/common/widgets/auth/form_divider.dart';
import 'package:firebase_ecommerce/common/widgets/auth/social_buttons.dart';
import 'package:firebase_ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:firebase_ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:firebase_ecommerce/utils/constants/sizes.dart';
import 'package:firebase_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingAppBarHeight,
          child: Column(
            children: [
              //Logo, title and subtitle
              TLoginHeader(),
              //Login form
              TLoginForm(),
              //Divider
              TFormDivider(
                dividerText: TTexts.orsigninwith,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              //Footer
              TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
