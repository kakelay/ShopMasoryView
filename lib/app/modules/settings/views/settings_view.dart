import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

// ignore: must_be_immutable
class SettingsView extends GetView<SettingsController> {
  SettingsView({Key? key}) : super(key: key);
  var name = 'Jonatas Borges'.obs;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
      //     //replace with our own icon data.
      //   ),
      //   title: const Text('SettingsView',style: TextStyle(color: Colors.black),),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Text(
          'SettingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
