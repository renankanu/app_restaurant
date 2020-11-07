import 'package:app_restaurant/app/repositories/category_repository.dart';
import 'package:get/get.dart';

import 'package:app_restaurant/app/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
    Get.lazyPut<CategoryRepository>(() => CategoryRepository(Get.find()));
  }
}
