import 'package:car_rental_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentIndex = 0;
  final List<String> imageList = [
    'assets/car.png',
    'assets/car1.png',
    'assets/car.png',
    'assets/car.png',
    'assets/car1.png',
    'assets/car.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 220,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() => _currentIndex = index);
                    },
                  ),
                  items: imageList.map((imgPath) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                        imgPath,
                        width: double.infinity,
                        fit: BoxFit.cover,
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
            // const SizedBox(height: 8),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: imageList.asMap().entries.map((entry) {
            //     return Container(
            //       width: 8.0,
            //       height: 8.0,
            //       margin: const EdgeInsets.symmetric(horizontal: 4.0),
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: _currentIndex == entry.key
            //             ? Colors.green
            //             : Colors.grey[300],
            //       ),
            //     );
            //   }).toList(),
            // ),
            // const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
