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
          Obx(() => Text(controller.isError.toString()))
        ],
      ),
    );
  }
}
