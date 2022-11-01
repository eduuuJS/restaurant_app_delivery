import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/routes/app_routes.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/food_menu_binding.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/food_menu_view.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/home_binding.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/home_view.dart';

abstract class AppViews {
  static final views = [
    GetPage(
        name: AppRoutes.HOME,
        page: () => const HomeView(),
        binding: HomeBinding()),
    GetPage(
        name: AppRoutes.FOODMENU,
        page: () => const FoodMenuView(),
        binding: FoodMenuBinding()),
  ];
}
