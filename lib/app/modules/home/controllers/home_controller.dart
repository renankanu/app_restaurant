import 'package:app_restaurant/app/models/category_model.dart';
import 'package:app_restaurant/app/network/custom_exception.dart';
import 'package:app_restaurant/app/repositories/category_repository.dart';
import 'package:app_restaurant/app/utils/custom_snack_service.dart';
import 'package:get/get.dart';

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
    print('ready');
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
