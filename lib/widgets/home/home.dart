import 'package:car_rental_app/components/card.dart';
import 'package:car_rental_app/controllers/home_controller.dart';
import 'package:car_rental_app/routes/app_routes.dart';
import 'package:car_rental_app/widgets/bottomnavigation.dart/bottomnavigation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class home extends StatefulWidget {
  final int index = 0;

  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final HomeController homeController = Get.put(HomeController());
  int _currentIndex = 0;
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Center(child: Text('Home')),
    Center(child: Text('Favorites')),
    Center(child: Text('Menu')),
  ];

  final List<String> imageList = [
    'assets/car1.png',
    'assets/car.png',
    'assets/car1.png',
    'assets/car.png',
    'assets/car1.png',
    'assets/car.png',
  ];
  String _getImage(int index) {
    final images = [
      'assets/car.png',
      'assets/car1.png',
      'assets/car.png',
      'assets/car.png',
      'assets/car1.png',
      'assets/car.png',
    ];
    return images[index % images.length];
  }

  String carModel(int index) {
    final carModels = [
      'Nissan Leaf',
      'Tesla Model S',
      'Ford Mustang',
      'Chevrolet Bolt',
    ];
    return carModels[widget.index % carModels.length];
  }

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
          subtitle: Text("NewYork, USA",
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ////////Slider for car images///////
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 180,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      onPageChanged: (index, reason) {
                        setState(() => _currentIndex = index);
                      },
                    ),
                    items: imageList.map((imgPath) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imgPath,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/placeholder.png',
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      );
                    }).toList(),
                  ),
                  // Positioned(
                  //   top: 12,
                  //   left: 12,
                  //   child: Container(
                  //     padding:
                  //         const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  //     decoration: BoxDecoration(
                  //       color: Colors.orange,
                  //       borderRadius: BorderRadius.circular(6),
                  //     ),
                  //     child: const Text('NEW',
                  //         style: TextStyle(color: Colors.white, fontSize: 12)),
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 12,
                  //   left: 80,
                  //   child: Container(
                  //     padding:
                  //         const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  //     decoration: BoxDecoration(
                  //       color: Colors.redAccent,
                  //       borderRadius: BorderRadius.circular(6),
                  //     ),
                  //     child: const Text('30.0% OFF',
                  //         style: TextStyle(color: Colors.white, fontSize: 12)),
                  //   ),
                  // ),
                  // const Positioned(
                  //   top: 12,
                  //   right: 12,
                  //   child: Icon(Icons.favorite_border, color: Colors.white),
                  // ),
                ],
              ),
              //CarImageSlider(imageUrls: imageUrls),
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
                      child: slider_card1(
                        _getImage(widget.index),
                        carModel(widget.index),
                      ),
                      onTap: () {
                        // Handle card tap
                        Navigator.pushNamed(
                          context,
                          AppRoutes.car_details,
                          arguments: {
                            'carId': widget.index, // Example argument
                            'carName': carModel(widget.index),
                            'carImage': _getImage(widget.index),
                            'carDescription': 'RideMaster Taxis',
                            'carPrice': 10000,
                            'carRating': 4.5,
                          },
                        );
                      },
                    ),
                    SizedBox(width: 10),

                    InkWell(
                      child: slider_card1(
                        _getImage(widget.index + 1),
                        carModel(widget.index + 1),
                      ),
                      onTap: () {
                        // Handle card tap
                        Navigator.pushNamed(
                          context,
                          AppRoutes.car_details,
                          arguments: {
                            'carId': 2, // Example argument
                            'carName': carModel(widget.index + 1),
                            'carImage': _getImage(widget.index + 1),
                            'carDescription': 'Electric Luxury Sedan',
                            'carPrice': 12000,
                            'carRating': 4.8,
                          },
                        );
                      },
                    ),

                    SizedBox(width: 10),
                    InkWell(
                      child: slider_card1(
                        _getImage(widget.index + 2),
                        carModel(widget.index + 2),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.car_details,
                            arguments: {
                              'carId': 3, // Example argument
                              'carName': carModel(widget.index + 2),
                              'carImage': _getImage(widget.index + 2),
                              'carDescription': 'Sporty Coupe',
                              'carPrice': 15000,
                              'carRating': 4.7,
                            });
                      },
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      child: slider_card1(
                        _getImage(widget.index + 3),
                        carModel(widget.index + 3),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.car_details,
                            arguments: {
                              'carId': 4, // Example argument
                              'carName': carModel(widget.index + 3),
                              'carImage': _getImage(widget.index + 3),
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
              ),
              SizedBox(height: 16.0),
              invitation_card(context),
              SizedBox(height: 16.0),
              invitation_card(context)
            ],
          ),
        ),
      ),
      //Floating Action Button for quick actions
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: Colors.green,
        overlayOpacity: 0.4,
        spacing: 12,
        children: [
          SpeedDialChild(
            backgroundColor: Colors.green,
            child: Icon(Icons.message),
            onTap: () {
              Get.toNamed(AppRoutes.message);
            },
          ),
          SpeedDialChild(
            backgroundColor: Colors.green,
            child: Icon(Icons.call),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: bottomnavigation(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
      ),
    );
  }
}
