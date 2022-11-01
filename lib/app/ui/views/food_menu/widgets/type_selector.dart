import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';
import 'package:restaurant_delivery_app/core/theme/app_style.dart';

class TypeSelector extends StatelessWidget {
  const TypeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getSelection("Classic"),
          getSelection("Experimental"),
          getSelection("Speciality")
        ],
      ),
    );
  }

  Widget getSelection(String title) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
          color: AppColor.backgroundBox,
          borderRadius: BorderRadius.all(Radius.circular(50.0))),
      child: Text(title, style: AppStyle.generalText),
    );
  }
}
