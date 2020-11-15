import 'package:app_restaurant/app/modules/home/controllers/home_controller.dart';
import 'package:app_restaurant/app/network/custom_dio.dart';
import 'package:app_restaurant/app/repositories/category_repository.dart';
import 'package:get/get.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CustomDio());
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
    Get.lazyPut<CategoryRepository>(() => CategoryRepository(Get.find()));
  }
}
