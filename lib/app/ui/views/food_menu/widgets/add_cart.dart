import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';
import 'package:restaurant_delivery_app/core/theme/app_style.dart';

class AddCart extends StatelessWidget {
  const AddCart(
      {Key? key,
      required this.image,
      required this.description,
      required this.kcal,
      required this.proteins,
      required this.fat,
      required this.carbs,
      required this.price})
      : super(key: key);

  final String image;
  final String description;
  final String kcal;
  final String proteins;
  final String fat;
  final String carbs;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(243, 243, 243, 0.836),
              borderRadius: BorderRadius.all(Radius.circular(2.5))),
          height: 5.0,
          width: 60.0,
        ),
        Container(
          height: 10.0,
          width: 70.0,
          color: Colors.transparent,
        ),
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0))),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white,
            padding:
                const EdgeInsets.symmetric(vertical: 28.0, horizontal: 23.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: AppStyle.generalText,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Nutritional value per plate:",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getFoodData("kcal", kcal),
                        getFoodData("proteins", proteins),
                        getFoodData("fat", fat),
                        getFoodData("carbs", carbs),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            height: 70.0,
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getButton(Icons.add),
                getButton(Icons.remove),
                GestureDetector(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    height: 70.0,
                    decoration: const BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(35.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Add to cart: ",
                          style: TextStyle(
                              color: AppColor.backgroundBox,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                              color: AppColor.backgroundBox,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget getFoodData(String type, String data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data,
          style: AppStyle.generalText,
        ),
        const SizedBox(height: 7.0),
        Text(
          type,
          style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  Widget getButton(IconData icon) {
    return CircleAvatar(
      radius: 35.0,
      backgroundColor: AppColor.backgroundBox,
      child: Icon(
        icon,
        color: AppColor.primaryColor,
        size: 35.0,
      ),
    );
  }
}
