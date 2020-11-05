import 'package:app_marvel/app/modules/detail/views/detail_view.dart';
import 'package:app_marvel/app/modules/detail/bindings/detail_binding.dart';
import 'package:app_marvel/app/modules/home/views/home_view.dart';
import 'package:app_marvel/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAIL, 
      page:()=> DetailView(), 
      binding: DetailBinding(),
    ),
  ];
}