import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery_app/app/routes/app_routes.dart';
import 'package:restaurant_delivery_app/app/routes/app_view.dart';
import 'package:restaurant_delivery_app/core/theme/app_color.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant_Delivery_App',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          fontFamily: 'Euclid Circular B',
          primaryColor: AppColor.primaryColor),
      initialRoute: AppRoutes.HOME,
      getPages: AppViews.views,
    );
  }
}
