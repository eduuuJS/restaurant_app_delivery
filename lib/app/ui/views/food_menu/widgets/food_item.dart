import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';

class FoodItem extends StatelessWidget {
  const FoodItem(
      {Key? key,
      required this.image,
      required this.description,
      required this.price})
      : super(key: key);

  final String image;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140.0,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(22.0)),
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 11.0,
          ),
          Text(
            description,
            style: const TextStyle(
                color: Color.fromRGBO(23, 23, 28, 0.863),
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 11.0,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            decoration: const BoxDecoration(
                color: AppColor.backgroundBox,
                borderRadius: BorderRadius.all(Radius.circular(35.0))),
            child: Center(
                child: Text(
              price,
              style: const TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700),
            )),
          )
        ],
      ),
    );
  }
}
