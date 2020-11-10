import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class CustomInterceptor extends InterceptorsWrapper {
  final refreshToken;

  CustomInterceptor({this.refreshToken = true});

  @override
  Future onRequest(RequestOptions options) async {
    options.headers.addAll({"user-key": "654e34a33e59154da71b5143d5a4f1f"});

    if (options.data != null && options.data is Map) {
      options.data.removeWhere((_, value) => value == null);

      (options.data as Map).values.map((value) {
        if (value is String) return value.trim();
        return value;
      });
    }

    if (!kReleaseMode) {
      print('=====================  REQUEST LOG =====================');
      print('REQUEST <${options.baseUrl}${options.path}>[${options.method}]');
      printWrapped(
          'PARAMS => ${options.queryParameters ?? 'NO QUERY PARAMETERS'}');
      print('HEADERS => ${options.headers ?? 'NO HEADER'}');
      printWrapped(
          'BODY => ${jsonEncode(options.data ?? '{"message": NO BODY DATA}') ?? 'NO BODY DATA'}');
      print(
          '==================================================================');
    }

    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    if (!kReleaseMode) {
      final request = response.request;

      print('=================  REPSONSE SUCCESS LOG =================');
      print('REQUEST <${request.baseUrl}${request.path}>[${request.method}]');
      print('STATUS CODE => ${response.statusCode}');
      printWrapped(
          'BODY => ${jsonEncode(response.data ?? '{"message": NO BODY DATA}') ?? 'NO BODY'}');
      print(
          '==================================================================');
    }
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    if (!kReleaseMode) {
      final request = err.request;
      final response = err.response;

      print('==================  REPSONSE ERROR LOG ==================');
      print(
          'REQUEST <${request?.baseUrl}${request?.path}>[${request?.method}]');
      print('TYPE => ${err.type}');
      print('MESSAGE => ${err.message ?? 'NO MESSAGE'}');
      printWrapped('BODY => ${response?.data ?? 'NO BODY'}');
      print(
          '==================================================================');
    }

    return super.onError(err);
  }

  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}');
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }
}
