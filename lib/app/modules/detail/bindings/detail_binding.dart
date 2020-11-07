import 'package:get/get.dart';

import 'package:app_restaurant/app/modules/detail/controllers/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(
      () => DetailController(),
    );
  }
}
