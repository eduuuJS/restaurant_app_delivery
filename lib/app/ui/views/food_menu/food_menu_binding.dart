import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/food_menu_controller.dart';

class FoodMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoodMenuController());
  }
}
