import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class car_details extends StatefulWidget {
  const car_details({Key? key}) : super(key: key);

  @override
  State<car_details> createState() => _car_detailsState();
}

class _car_detailsState extends State<car_details> {
  final args = Get.arguments;
  int _currentIndex = 0;
  final List<String> imageList = [
    'assets/car1.png',
    'assets/car.png',
    'assets/car1.png',
    'assets/car.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Vehicle Details',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.share, color: Colors.green),
          )
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
                        args['carModel'] ?? imgPath,
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
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text('NEW',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 80,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text('30.0% OFF',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ),
                const Positioned(
                  top: 12,
                  right: 12,
                  child: Icon(Icons.favorite_border, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == entry.key
                        ? Colors.green
                        : Colors.grey[300],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    args['carModel'] ?? 'Toyota',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Vendor: Toyota Motors | 5 seats | Automatic',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Daily Rent: \$55.00',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Details:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    args['carDescription'] ??
                        'This hybrid car offers excellent fuel efficiency, perfect for city or long-distance rides. Fully insured and comes with 24/7 roadside assistance.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 22),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(55),
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
          ),
          onPressed: () {
            // Handle rent action
            Navigator.pushNamed(context, '/contact_form', arguments: {
              'carModel': args['carModel'] ?? 'Toyota',
              'imagePath': args['imagePath'] ?? 'assets/car1.png',
              'carDescription': args['carDescription'] ??
                  'This hybrid car offers excellent fuel efficiency.',
              'carRent': args['carRent'] ?? 'Daily Rent: \$55.00',
            });
          },
          child: const Text('Rent This Vehicle',
              style: TextStyle(fontSize: 16, color: Colors.white)),
        ),
      ),
    );
  }
}
