import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/routes/app_routes.dart';
import 'package:restaurant_delivery_app/app/ui/components/over_card.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/home_controller.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: ((controller) => Obx(((() {
              final elementCard =
                  controller.datum[controller.indexThread.value];
              return Container(
                width: double.infinity,
                color: Colors.white,
                margin: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("   Fastest delivery time",
                        style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w600,
                            color: AppColor.primaryColor)),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: (() {
                        Get.toNamed(AppRoutes.FOODMENU,
                            arguments: elementCard.element3);
                      }),
                      child: OverCard(
                        image: elementCard.element2.image,
                        timer: elementCard.element2.timer,
                      ),
                    )),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text("    ${elementCard.element2.name}",
                        style: const TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.w800,
                            color: AppColor.primaryColor)),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text("     ${elementCard.element2.address}",
                        style: const TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryColor)),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              );
            })))));
  }
}
