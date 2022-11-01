import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/routes/app_routes.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/food_menu_controller.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';

class ButtonsFloating extends StatelessWidget {
  const ButtonsFloating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodMenuController>(
        builder: ((controller) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (() {
                        Get.offNamed(AppRoutes.HOME);
                      }),
                      child: getIcon(Icons.arrow_back_ios_new_outlined)),
                  getIcon(Icons.more_horiz_outlined)
                ],
              ),
            )));
  }

  Widget getIcon(IconData icon) {
    return CircleAvatar(
      backgroundColor: const Color.fromRGBO(23, 23, 28, 0.082),
      radius: 35.0,
      child: Icon(
        icon,
        color: AppColor.backgroundBox,
        size: 25.0,
      ),
    );
  }
}
