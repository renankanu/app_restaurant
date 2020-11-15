import 'package:app_restaurant/app/modules/core/bindings/core_binding.dart';
import 'package:app_restaurant/app/modules/restaurants/views/restaurants_view.dart';
import 'package:app_restaurant/app/modules/restaurants/bindings/restaurants_binding.dart';
import 'package:app_restaurant/app/modules/core/core_view.dart';
import 'package:app_restaurant/app/modules/detail/views/detail_view.dart';
import 'package:app_restaurant/app/modules/detail/bindings/detail_binding.dart';
import 'package:app_restaurant/app/modules/home/views/home_view.dart';
import 'package:app_restaurant/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.CORE;

  static final routes = [
    GetPage(
      name: Routes.CORE,
      page: () => CoreView(),
      binding: CoreBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: Routes.RESTAURANTS,
      page: () => RestaurantsView(),
      binding: RestaurantsBinding(),
    ),
  ];
}
