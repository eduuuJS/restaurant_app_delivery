import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/ui/components/search_field.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 27.0, bottom: 27.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [AppColor.orangeCustom, AppColor.yellowCustom]),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [getTitle(), getSubtitle()],
      ),
    );
  }

  Widget getTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundColor: AppColor.primaryColor,
          radius: 36.0,
          child: Icon(
            Icons.window_outlined,
            size: 30.0,
            color: AppColor.backgroundBox,
          ),
        ),
        Column(
          children: const [
            Text(
              "deliver to",
              style: TextStyle(color: AppColor.primaryColor),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Home",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryColor),
            )
          ],
        ),
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa7CL3f9IykTKLxAp4SS0qHbApkIaDamqTAw&usqp=CAU"),
          radius: 36.0,
        )
      ],
    );
  }

  Widget getSubtitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Lookin' for something special?",
          style: TextStyle(
              fontSize: 33.0,
              fontWeight: FontWeight.w800,
              color: AppColor.primaryColor),
        ),
        SizedBox(
          height: 20.0,
        ),
        SearchField()
      ],
    );
  }
}
