import 'package:app_restaurant/app/repositories/category_repository.dart';
import 'package:app_restaurant/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_restaurant/app/modules/home/controllers/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  final CategoryRepository repositort = Get.put(CategoryRepository(Get.find()));
  final HomeController controller = Get.put(HomeController(Get.find()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Categories',
              style: GoogleFonts.zcoolXiaoWei(
                  textStyle:
                      TextStyle(color: CustomColors.luckyPoint, fontSize: 32)),
            ),
            SizedBox(height: 24),
            Obx(
              () => Expanded(
                child: ListView.builder(
                    itemCount: controller.categories.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: InkWell(
                          onTap: () {},
                          child: Card(
                              color: CustomColors.linkWater,
                              elevation: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 24),
                                child: Center(
                                  child: Text(controller
                                      .categories[index].categories.name),
                                ),
                              )),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
