import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/data/dat2/open.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    _load();
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
  RxInt indexThread = RxInt(0);
  RxBool isLoading = RxBool(false);
  RxList datum = RxList([]);
  //functions
  _load() {
    isLoading.value = true;
    final response = Open.generate();
    datum.value = response.listfinal ?? [];
    isLoading.value = false;
  }
}
