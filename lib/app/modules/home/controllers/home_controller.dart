import 'package:app_restaurant/app/models/category_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../repositories/category_repository.dart';

class HomeController extends GetxController {
  CategoryRepository _categoryRepository;
  HomeController(this._categoryRepository);

  var categories = <CategoryModel>[].obs;
  var errorMessage = ''.obs;
  var isError = false.obs;

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
    } on Exception catch (e) {
      isError(true);
      errorMessage(e.toString());
    }
  }

  @override
  void onClose() {}
}
