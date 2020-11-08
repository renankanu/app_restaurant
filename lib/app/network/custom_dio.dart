import 'package:app_restaurant/app/network/custom_interceptor.dart';
import 'package:dio/dio.dart';

class CustomDio {
  static const int _timeout = 1000 * 60 * 2;
  Dio client;

  CustomDio() {
    client = Dio();
    client.options.sendTimeout = _timeout;
    client.options.connectTimeout = _timeout;
    client.options.receiveTimeout = _timeout;
    client.options.maxRedirects = 2;
    client.options.responseType = ResponseType.json;
    client.interceptors.add(CustomInterceptor());
    client.options.baseUrl = 'https://developers.zomato.com/api/v2.1/';
  }
}
