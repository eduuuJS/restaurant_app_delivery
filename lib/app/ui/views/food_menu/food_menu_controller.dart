import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/data/dat2/element3.dart';

class FoodMenuController extends GetxController {
  @override
  void onInit() {
    data = Get.arguments;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //variables
  Element3? data = Element3();
}
