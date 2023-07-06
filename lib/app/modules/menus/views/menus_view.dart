import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/menus_controller.dart';

class MenusView extends GetView<MenusController> {
  const MenusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MenusView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MenusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
