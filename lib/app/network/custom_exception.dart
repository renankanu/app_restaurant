import 'package:dio/dio.dart';

class CustomException implements Exception {
  String message;
  int statusCode;
  CustomException();

  CustomException.fromDioError(DioError error) {
    if (error.response != null && error.response.data != null) {
      final json = error.response.data;
      message = json['message'];
    } else if (error.type == DioErrorType.CONNECT_TIMEOUT ||
        error.type == DioErrorType.RECEIVE_TIMEOUT ||
        error.type == DioErrorType.SEND_TIMEOUT) {
      message = 'Connection timeout';
    } else {
      message = 'Error in request: ${error.message}';
    }

    if (message == null || message.trim().isEmpty)
      statusCode = error.response.statusCode;
  }
}
