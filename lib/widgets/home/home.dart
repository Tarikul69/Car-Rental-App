import 'package:car_rental_app/components/card.dart';
import 'package:car_rental_app/components/components.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.location_city, color: Colors.white),
          title: ListTile(
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
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                // Handle notification icon press
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(16.0),
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
                SizedBox(height: 16.0),
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
                        slider_card1(),
                        slider_card1(),
                        slider_card1(),
                        slider_card1(),
                        slider_card1(),
                        slider_card1(),
                        slider_card1(),
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
