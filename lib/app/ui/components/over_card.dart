import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';

class OverCard extends StatelessWidget {
  const OverCard({Key? key, required this.image, required this.timer})
      : super(key: key);
  final String image;
  final String timer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Hero(
            transitionOnUserGestures: true,
            tag: 'img',
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Positioned(
          top: 14.0,
          left: 14.0,
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 13.0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25.0))),
            child: Text(
              timer,
              style: const TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0),
            ),
          ),
        ),
      ],
    );
  }
}
