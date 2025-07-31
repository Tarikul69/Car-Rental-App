import 'package:car_rental_app/components/card.dart';
import 'package:car_rental_app/controllers/home_controller.dart';
import 'package:car_rental_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class home extends StatelessWidget {
  home({super.key});
  final HomeController homeController = Get.put(HomeController());

  get args => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.location_city, color: Colors.white),
          title: const ListTile(
            title: Text("Your Location",
                style: TextStyle(
                  color: const Color.fromARGB(255, 53, 49, 49),
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text("Delhi, India",
                style: TextStyle(
                  color: const Color.fromARGB(255, 53, 49, 49),
                )),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                // Handle notification icon press
                Get.toNamed(AppRoutes.notifications);
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Slider for car images
                Container(
                  height: 150,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    pageSnapping: true,
                    //controller: PageController(viewportFraction: 0.8),
                    onPageChanged: (index) {
                      // Handle page change if needed
                    },
                    children: [
                      Image.asset('assets/car.png', fit: BoxFit.cover),
                      Image.asset('assets/car.png', fit: BoxFit.cover),
                      Image.asset('assets/car.png', fit: BoxFit.cover),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Rated Vehicles',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle view all button press
                          Get.toNamed(AppRoutes.top_rated);
                        },
                        child: Text('View All'),
                      ),
                    ],
                  ),
                ),
                // Search bar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for cars',
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none, // Remove visible border
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 219, 215, 215),
                    suffixIcon: Icon(Icons.search, color: Colors.grey[700]),
                  ),
                  style: TextStyle(fontSize: 16),
                ),

                SizedBox(height: 16.0),
                //carousel_slider(),
                // List of available cars
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  //Card()
                  child: Row(
                    children: [
                      InkWell(
                        child: slider_card1(),
                        onTap: () {
                          // Handle card tap
                          Navigator.pushNamed(
                            context,
                            AppRoutes.car_details,
                            arguments: {
                              'carId': 1, // Example argument
                              'carName': 'Nissan Leaf',
                              'carImage': 'assets/car.png',
                              'carDescription': 'RideMaster Taxis',
                              'carPrice': 10000,
                              'carRating': 4.5,
                            },
                          );
                        },
                      ),
                      SizedBox(width: 10),

                      InkWell(
                        child: slider_card1(),
                        onTap: () {
                          // Handle card tap
                          Navigator.pushNamed(
                            context,
                            AppRoutes.car_details,
                            arguments: {
                              'carId': 2, // Example argument
                              'carName': 'Tesla Model S',
                              'carImage': 'assets/car.png',
                              'carDescription': 'Electric Luxury Sedan',
                              'carPrice': 12000,
                              'carRating': 4.8,
                            },
                          );
                        },
                      ),

                      SizedBox(width: 10),
                      InkWell(
                        child: slider_card1(),
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.car_details,
                              arguments: {
                                'carId': 3, // Example argument
                                'carName': 'Ford Mustang',
                                'carImage': 'assets/car.png',
                                'carDescription': 'Sporty Coupe',
                                'carPrice': 15000,
                                'carRating': 4.7,
                              });
                        },
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        child: slider_card1(),
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.car_details,
                              arguments: {
                                'carId': 4, // Example argument
                                'carName': 'Chevrolet Bolt',
                                'carImage': 'assets/car.png',
                                'carDescription': 'Compact Electric Car',
                                'carPrice': 9000,
                                'carRating': 4.3,
                              });
                        },
                      ),
                      SizedBox(width: 10),
                      // Handle card tap
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
