import 'package:firebase_ecommerce/bindings/network_manager.dart';
import 'package:firebase_ecommerce/common/widgets/auth/verify_email.dart';
import 'package:firebase_ecommerce/data/repositories/auth/auth_repo.dart';
import 'package:firebase_ecommerce/data/repositories/user/user_repo.dart';
import 'package:firebase_ecommerce/features/authentication/models/user_model.dart';
import 'package:firebase_ecommerce/utils/constants/image_strings.dart';
import 'package:firebase_ecommerce/utils/popups/fullscreen_loader.dart';
import 'package:firebase_ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // Signup
  Future<void> signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoader(
        'We are processing your information...',
        TImages.loading,
      );
      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form validation
      if (!signupFormKey.currentState!.validate()) return;

      // Check privacy policy
      if (!privacyPolicy.value) {
        Get.snackbar(
          'Oh Snap!',
          'Please accept our privacy policy',
        );
        return;
      }

      // Register user and save data in firebase authentication
      final userCredential =
          await AuthRepo.instance.registerWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      // Save user data in firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepo = Get.put(UserRepo());
      await userRepo.saveUserRecord(newUser);

      // Show success message
      TLoaders.success(
        title: 'Congratulations!',
        message:
            'Your account has been created successfully, verify your email.',
      );

      // Move to verification page
      Get.to(
        () => const VerifyEmail(
            title: 'Thank you!',
            subtitle: 'for signing up',
            buttonText: 'Login'),
      );
    } catch (e) {
      // Close loader
      TFullScreenLoader.closeLoader();
      // Show error message
      TLoaders.error(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Close loader
      TFullScreenLoader.closeLoader();
    }
  }
}
