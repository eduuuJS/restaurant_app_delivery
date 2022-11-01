import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/food_menu_controller.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/widgets/body_stack.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/widgets/buttons_floating.dart';

class FoodMenuView extends StatelessWidget {
  const FoodMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodMenuController>(
        builder: ((controller) => const Scaffold(

            //BUTTONS_FLOATING
            floatingActionButton: ButtonsFloating(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerTop,
            //BUTTONS_FLOATING

            //BODY
            body: BodyStack())));
    //BODY
  }
}
