import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/routes/app_routes.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      getbutton("Home", Icons.home_outlined, route: AppRoutes.HOME),
      getbutton("Messages", Icons.message_outlined),
      getbutton("Box", Icons.card_giftcard_outlined),
      getbutton("User", Icons.person_outline)
    ]);
  }

  BottomNavigationBarItem getbutton(String label, IconData iconData,
      {dynamic route}) {
    return BottomNavigationBarItem(
        label: label,
        icon: GestureDetector(
          onTap: () {
            Get.offNamed(route);
          },
          child: Icon(
            iconData,
            color: AppColor.primaryColor,
            size: 30.0,
          ),
        ));
  }
}
