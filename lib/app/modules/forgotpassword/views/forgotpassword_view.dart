import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgotpassword_controller.dart';

class ForgotpasswordView extends GetView<ForgotpasswordController> {
  ForgotpasswordView({Key? key}) : super(key: key);
  final ForgotPasswordController _forgotPasswordController =
      Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Forgot Password'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          //replace with our own icon data.
        ),
      ),
      body: Padding(
        padding: const  EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Find your account",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            TextField(
              controller: _forgotPasswordController.emailController,
              decoration: const InputDecoration(
                labelText: 'Mobile number or email ',
              ),
              autofocus: true,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _forgotPasswordController.resetPassword(),
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
