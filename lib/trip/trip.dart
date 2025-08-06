import 'package:car_rental_app/components/card.dart';
import 'package:car_rental_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class trip extends StatelessWidget {
  const trip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trip Details',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.car_crash_outlined, color: Colors.white),
            onPressed: () {
              // Implement filter functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.car_details);
                },
                child: trip_card(
                  imgePath: 'assets/car1.png',
                  carModel: 'Toyota Camry',
                  carDescription: 'A comfortable and spacious car.',
                  newTag: "New",
                  //carPrice: '30.0',
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.car_details);
                },
                child: trip_card(
                  imgePath: 'assets/car1.png',
                  carModel: 'Honda Accord',
                  carDescription: 'A reliable and efficient sedan.',
                  newTag: "Old",
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.car_details);
                },
                child: trip_card(
                  imgePath: 'assets/car.png',
                  carModel: 'Ford Focus',
                  carDescription: 'A compact and sporty hatchback.',
                  newTag: "New",
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
