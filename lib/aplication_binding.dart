import 'package:app_restaurant/app/network/custom_dio.dart';
import 'package:get/get.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CustomDio());
  }
}
