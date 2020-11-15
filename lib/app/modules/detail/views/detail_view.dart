import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_restaurant/app/modules/detail/controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'DetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
