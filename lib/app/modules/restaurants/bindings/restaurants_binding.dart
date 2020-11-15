import 'package:get/get.dart';
import 'package:app_restaurant/app/modules/restaurants/controllers/restaurants_controller.dart';

class RestaurantsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestaurantsController>(
      () => RestaurantsController(),
    );
  }
}
