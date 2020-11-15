import 'package:app_restaurant/aplication_binding.dart';
import 'package:app_restaurant/environment_badge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(Directionality(
      textDirection: TextDirection.ltr,
      child: EnvironmentsBadge(
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialBinding: ApplicationBinding(),
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        ),
      )));
}
