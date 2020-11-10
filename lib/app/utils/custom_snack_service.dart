import 'package:app_restaurant/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackService {
  static void createSnackError(String message) {
    Get.snackbar('Zomato', '$message',
        colorText: Color(0xFFFFFFFF),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: CustomColors.persimmon);
  }
}
