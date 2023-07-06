import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotpasswordController extends GetxController {
  //TODO: Implement ForgotpasswordController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;



  
}
 

class ForgotPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();

  void resetPassword() {
    String email = emailController.text;

    // Perform password reset logic here, such as sending a reset email

    Get.snackbar(
      'Password Reset',
      'Password reset instructions sent to $email',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}