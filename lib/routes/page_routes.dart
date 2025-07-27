import 'package:car_rental_app/routes/app_routes.dart';
import 'package:car_rental_app/widgets/splash_screen/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash_screen,
      page: () => splash_screen(),
    ),
  ];
}
