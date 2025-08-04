import 'package:car_rental_app/routes/app_routes.dart';
import 'package:car_rental_app/routes/page_routes.dart';
import 'package:car_rental_app/widgets/home/home.dart';
import 'package:car_rental_app/widgets/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Gro Fast',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash_screen,
      getPages: AppPages.routes,
      routes: {
        '/': (context) => home(),
        '/menu': (context) => menu(),
      },
    );
  }
}
