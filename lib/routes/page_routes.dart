import 'package:car_rental_app/routes/app_routes.dart';
import 'package:car_rental_app/trip/trip.dart';
import 'package:car_rental_app/widgets/home/car_details.dart';
import 'package:car_rental_app/widgets/home/contact_form.dart';
import 'package:car_rental_app/widgets/home/home.dart';
import 'package:car_rental_app/widgets/home/top_rated.dart';
import 'package:car_rental_app/widgets/login_registration/forgetpassword.dart';
import 'package:car_rental_app/widgets/login_registration/login.dart';
import 'package:car_rental_app/widgets/login_registration/registration.dart';
import 'package:car_rental_app/widgets/menu/menu.dart';
import 'package:car_rental_app/widgets/menu/payment_methods.dart';
import 'package:car_rental_app/widgets/message/message.dart';
import 'package:car_rental_app/widgets/notifications/notifications.dart';
import 'package:car_rental_app/widgets/splash_screen/splash_screen.dart';
import 'package:car_rental_app/widgets/bottomnavigation.dart/start.dart';
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
    ),
    GetPage(
      name: AppRoutes.forgetpassword,
      page: () => forgetpassword(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => home(),
    ),
    GetPage(
      name: AppRoutes.top_rated,
      page: () => top_rated(),
    ),
    GetPage(
      name: AppRoutes.car_details,
      page: () => car_details(),
    ),
    GetPage(
      name: AppRoutes.notifications,
      page: () => notifications(),
    ),
    GetPage(
      name: AppRoutes.menu,
      page: () => menu(),
    ),
    GetPage(
      name: AppRoutes.trips,
      page: () => trip(),
    ),
    GetPage(
      name: AppRoutes.message,
      page: () => message(),
    ),
    GetPage(
      name: AppRoutes.start,
      page: () => start(),
    ),
    GetPage(
      name: AppRoutes.contact_form,
      page: () => contact_form(),
    ),
    GetPage(
      name: AppRoutes.payment_methods,
      page: () => payment_methods(),
    ),
  ];
}
