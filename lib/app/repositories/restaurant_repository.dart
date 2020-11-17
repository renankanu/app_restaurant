import 'package:app_restaurant/app/network/custom_dio.dart';
import 'package:app_restaurant/app/network/custom_exception.dart';
import 'package:dio/dio.dart';
import '../models/restaurant_model.dart';

class RestaurantRepository {
  CustomDio _dio;

  RestaurantRepository(
    this._dio,
  );

  Future<List<RestaurantModel>> getRestaurant() async {
    try {
      final response = await _dio.client.get('search');
      return (response.data['restaurants'] as List)
          .map((restaurant) => RestaurantModel.fromJson(restaurant))
          .toList();
    } on DioError catch (e) {
      throw new CustomException.fromDioError(e);
    }
  }
}
