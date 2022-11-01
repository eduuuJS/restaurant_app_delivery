import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
