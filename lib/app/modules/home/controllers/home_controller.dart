import 'package:app_restaurant/app/models/category_model.dart';
import 'package:app_restaurant/app/network/custom_exception.dart';
import 'package:app_restaurant/app/utils/custom_snack_service.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import '../../../repositories/category_repository.dart';

class HomeController extends GetxController {
  CategoryRepository _categoryRepository;
  HomeController(this._categoryRepository);

  var categories = <CategoryModel>[].obs;

  @override
  void onInit() {
    getAllCategories();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> getAllCategories() async {
    try {
      final resultCategories = await _categoryRepository.getCategories();
      categories.addAll(resultCategories);
    } on CustomException catch (e) {
      CustomSnackService.createSnackError(e.message);
    }
  }

  @override
  void onClose() {}
}
