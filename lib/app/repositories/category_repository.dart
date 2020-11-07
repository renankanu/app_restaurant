import '../models/category_model.dart';
import 'package:dio/dio.dart';

class CategoryRepository {
  Dio _dio;

  CategoryRepository(
    this._dio,
  );

  Future<List<CategoryModel>> getCategories() async {
    try {
      var response =
          _dio.get('https://developers.zomato.com/api/v2.1/categories');
    } catch (e) {}
  }
}
