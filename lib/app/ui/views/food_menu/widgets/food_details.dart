import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/views/food_menu/food_menu_controller.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';
import 'package:restaurant_delivery_app/core/theme/app_style.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodMenuController>(
      builder: ((controller) => Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.data!.element2?.name! ?? "",
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      controller.data!.element2?.address! ?? "",
                      style: const TextStyle(
                          color: Color.fromRGBO(23, 23, 28, 0.699),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Delivery Time",
                          style: AppStyle.generalText,
                        ),
                        Text(
                          controller.data!.element2?.timer! ?? "",
                          style: AppStyle.generalText,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Delivery Cost",
                            style: AppStyle.generalText),
                        Text(controller.data?.cost! ?? "",
                            style: AppStyle.generalText)
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
