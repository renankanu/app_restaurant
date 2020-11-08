import 'package:app_restaurant/app/network/custom_dio.dart';
import 'package:app_restaurant/app/network/custom_exception.dart';

import '../models/category_model.dart';
import 'package:dio/dio.dart';

class CategoryRepository {
  CustomDio _dio;

  CategoryRepository(
    this._dio,
  );

  Future<List<CategoryModel>> getCategories() async {
    try {
      final response = await _dio.client.get('categories');
      return (response.data['categories'] as List)
          .map((child) => CategoryModel.fromJson(child))
          .toList();
    } on DioError catch (e) {
      throw new CustomException.fromDioError(e);
    }
  }
}
