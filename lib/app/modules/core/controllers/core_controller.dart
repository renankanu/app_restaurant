import 'package:app_restaurant/app/modules/home/views/home_view.dart';
import 'package:app_restaurant/app/modules/restaurants/views/restaurants_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoreController extends GetxController {
  var selectedItem = 0.obs;
  final List<Widget> getPage = [HomeView(), RestaurantsView()];

  void changeIndexPage(index) => selectedItem.value = index;

  @override
  void onClose() {}
}
