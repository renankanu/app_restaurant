import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_restaurant/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Categories',
              style: TextStyle(fontSize: 16),
            ),
            Container(
              height: 80.0,
              child: Obx(() => ListView.builder(
                  itemCount: controller.categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Center(
                              child: Text(
                                  controller.categories[index].categories.name),
                            ),
                          )),
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
