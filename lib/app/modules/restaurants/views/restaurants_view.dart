import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:app_restaurant/app/modules/restaurants/controllers/restaurants_controller.dart';

class RestaurantsView extends GetView<RestaurantsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RestaurantsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RestaurantsView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  