import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_restaurant/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            '',
            style: TextStyle(fontSize: 20),
          ),
          Obx(() => Text(controller.categories.length > 0
              ? controller.categories[0].categories.name
              : ''))
        ],
      ),
    );
  }
}
