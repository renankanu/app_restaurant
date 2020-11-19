import 'package:app_restaurant/app/modules/core/controllers/core_controller.dart';
import 'package:app_restaurant/app/modules/core/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CoreView extends GetView<CoreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() => controller.getPage[controller.selectedItem.value]),
      bottomNavigationBar: CustomBottomBar(
        iconList: [
          'assets/icons/fork.svg',
          'assets/icons/hat.svg',
        ],
        onChange: (val) {
          controller.changeIndexPage(val);
        },
        defaultSelectedIndex: 0,
      ),
    );
  }
}
