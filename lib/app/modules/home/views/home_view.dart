import 'package:app_restaurant/app/utils/custom_colors.dart';
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
              style: TextStyle(fontSize: 20),
            ),
            Container(
              child: Obx(() => Expanded(
                    child: ListView.builder(
                        itemCount: controller.categories.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Card(
                                  color: CustomColors.persimmon,
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 24),
                                    child: Center(
                                      child: Text(controller
                                          .categories[index].categories.name),
                                    ),
                                  )),
                            ),
                          );
                        }),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
