import 'package:app_restaurant/app/modules/restaurants/controllers/restaurants_controller.dart';
import 'package:app_restaurant/app/repositories/restaurant_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/item_restaurant.dart';

class RestaurantsView extends StatelessWidget {
  final RestaurantRepository restaurantRepository =
      Get.put(RestaurantRepository(Get.find()));
  final RestaurantsController controller =
      Get.put(RestaurantsController(Get.find()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Restaurants'),
            Obx(() => Expanded(
                  child: ListView.builder(
                    itemCount: controller.restaurants.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ItemRestaurant(
                        restaurantModel: controller.restaurants[index],
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
