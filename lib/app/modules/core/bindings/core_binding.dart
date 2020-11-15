import 'package:app_restaurant/app/modules/core/controllers/core_controller.dart';
import 'package:get/get.dart';

class CoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoreController>(() => CoreController());
  }
}
