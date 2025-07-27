import 'package:car_rental_app/routes/app_routes.dart';
import 'package:car_rental_app/widgets/login_registration/login.dart';
import 'package:car_rental_app/widgets/login_registration/registration.dart';
import 'package:car_rental_app/widgets/splash_screen/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash_screen,
      page: () => splash_screen(),
    ),
    GetPage(
      name: AppRoutes.registration,
      page: () => registration(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => login(),
    ), // Assuming login uses the same widget for now
  ];
}
