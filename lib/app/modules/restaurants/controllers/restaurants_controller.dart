import 'package:app_restaurant/app/network/custom_exception.dart';
import 'package:app_restaurant/app/utils/custom_snack_service.dart';
import 'package:get/get.dart';

import 'package:app_restaurant/app/repositories/restaurant_repository.dart';
import '../../../models/restaurant_model.dart';

class RestaurantsController extends GetxController {
  RestaurantRepository _restaurantRepository;

  RestaurantsController(this._restaurantRepository);

  var restaurants = <RestaurantModel>[].obs;

  @override
  void onInit() {
    getAllRestaurants();
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  Future<void> getAllRestaurants() async {
    try {
      final resultCategories = await _restaurantRepository.getRestaurant();
      restaurants.addAll(resultCategories);
    } on CustomException catch (e) {
      CustomSnackService.createSnackError(e.message);
    }
  }
}
