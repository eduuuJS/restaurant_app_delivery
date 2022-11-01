import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/components/custom_bottom_navigation_bar.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/home_controller.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/custom_app_bar.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/food_card.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/widgets/food_selector.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: ((controller) => Scaffold(
              //BODY
              body: Column(
                children: const [
                  //APPBAR
                  Expanded(flex: 4, child: CustomAppBar()),
                  //APPBAR

                  SizedBox(
                    height: 30.0,
                  ),

                  //SELECTOR
                  SizedBox(
                    height: 62.0,
                    child: FoodSelector(),
                  ),
                  //SELECTOR

                  SizedBox(
                    height: 30.0,
                  ),

                  //CARD
                  Expanded(
                    flex: 4,
                    child: FoodCard(),
                  ),
                  //CARD
                ],
              ),
              //BODY

              //BOTTOM_NAVIGATION_BAR
              bottomNavigationBar: const CustomBottomNavigationBar(),
              //BOTTOM_NAVIGATION_BAR
            )));
  }
}
