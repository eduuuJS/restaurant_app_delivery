import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/food_menu_controller.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/widgets/add_cart.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/widgets/food_details.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/widgets/food_item.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/widgets/type_selector.dart';

class BodyStack extends StatelessWidget {
  const BodyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodMenuController>(
        builder: ((controller) => Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Hero(
                        transitionOnUserGestures: true,
                        tag: 'img',
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      controller.data?.element2!.image ?? ""))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100.0,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
                getSheet()
              ],
            )));
  }

  Widget getSheet() {
    return GetBuilder<FoodMenuController>(
      builder: ((controller) => DraggableScrollableSheet(
          initialChildSize: 0.64,
          minChildSize: 0.64,
          maxChildSize: 1.0,
          builder: ((context, scrollController) => Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                        topRight: Radius.circular(35.0))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    const FoodDetails(),
                    const TypeSelector(),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height / 1.5),
                          ),
                          controller: scrollController,
                          itemCount: controller.data?.eats!.length,
                          itemBuilder: ((context, index) {
                            final foodElement = controller.data!.eats![index];
                            return GestureDetector(
                                onTap: (() {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      isScrollControlled: true,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(35.0),
                                            topRight: Radius.circular(35.0)),
                                      ),
                                      context: context,
                                      builder: ((context) {
                                        return FractionallySizedBox(
                                            heightFactor: 0.74,
                                            child: AddCart(
                                              image: foodElement.image ?? "",
                                              description: foodElement.d2 ?? "",
                                              kcal: foodElement.kcal ?? "",
                                              proteins:
                                                  foodElement.proteins ?? "",
                                              fat: foodElement.fat ?? "",
                                              carbs: foodElement.carbs ?? "",
                                              price: foodElement.price ?? "",
                                            ));
                                      }));
                                }),
                                child: FoodItem(
                                  image: foodElement.image ?? "",
                                  description: foodElement.d1 ?? "",
                                  price: foodElement.price ?? "",
                                ));
                          })),
                    ),
                  ],
                ),
              )))),
    );
  }
}
