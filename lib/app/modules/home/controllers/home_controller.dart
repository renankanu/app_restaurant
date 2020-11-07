import 'package:app_restaurant/app/models/category_model.dart';
import 'package:get/get.dart';

import '../../../repositories/category_repository.dart';

class HomeController extends GetxController {
  CategoryRepository _categoryRepository;

  HomeController(this._categoryRepository);

  final categories = List<CategoryModel>().obs;

  @override
  void onInit() {
    _categoryRepository.getCategories();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
