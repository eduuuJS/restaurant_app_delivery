import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/ui/views/home/home_controller.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';

class FoodSelector extends StatelessWidget {
  const FoodSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: ((controller) => Container(
              margin: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
              ),
              child: Obx((() => ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 7.0,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.datum.length,
                  itemBuilder: ((context, index) {
                    final elementSelector = controller.datum[index].element1;
                    return GestureDetector(
                      onTap: () {
                        controller.indexThread.value = index;
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: const BoxDecoration(
                            color: AppColor.backgroundBox,
                            borderRadius:
                                BorderRadius.all(Radius.circular(75.0))),
                        child: Row(
                          children: [
                            Icon(
                              elementSelector.iconData,
                              color: AppColor.primaryColor,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              elementSelector.name,
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    );
                  })))),
            )));
  }
}
