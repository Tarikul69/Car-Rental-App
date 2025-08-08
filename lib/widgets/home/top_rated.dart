import 'package:car_rental_app/components/card.dart';
import 'package:flutter/material.dart';

class top_rated extends StatelessWidget {
  const top_rated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Top Rated Vehicles',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
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
                  Navigator.pushNamed(context, '/car_details', arguments: {
                    'carModel': 'Toyota Prius Hybrid 2022',
                    'imagePath': 'assets/car1.png',
                    'carDescription':
                        'A hybrid car with excellent fuel efficiency.',
                    'carRent': 'Daily Rent: \$55.00',
                  });
                },
                child: slider_card(
                  imgePath: 'assets/car1.png',
                  carModel: 'Toyota Prius',
                  carDescription: 'A comfortable and spacious car.',
                  newTag: "New",
                  carRating: 4.5,
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/car_details', arguments: {
                    'carModel': 'Honda Accord 2022',
                    'imagePath': 'assets/car1.png'
                  });
                },
                child: slider_card(
                  imgePath: 'assets/car1.png',
                  carModel: 'Honda Accord',
                  carDescription: 'A reliable and efficient sedan.',
                  newTag: "Old",
                  carRating: 5.0,
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/car_details', arguments: {
                    'carModel': 'Ford Focus 2022',
                    'imagePath': 'assets/car.png'
                  });
                },
                child: slider_card(
                  imgePath: 'assets/car.png',
                  carModel: 'Ford Focus',
                  carDescription: 'A compact and sporty hatchback.',
                  newTag: "New",
                  carRating: 4.9,
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/car_details', arguments: {
                    'carModel': 'Chevrolet Malibu 2022',
                    'imagePath': 'assets/car.png'
                  });
                },
                child: slider_card(
                  imgePath: 'assets/car.png',
                  carModel: 'Chevrolet Malibu',
                  carDescription: 'A stylish and efficient sedan.',
                  newTag: "New",
                  carRating: 4.8,
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/car_details', arguments: {
                    'carModel': 'Nissan Altima 2022',
                    'imagePath': 'assets/car1.png'
                  });
                },
                child: slider_card(
                  imgePath: 'assets/car1.png',
                  carModel: 'Nissan Altima',
                  carDescription: 'A comfortable and reliable sedan.',
                  newTag: "New",
                  carRating: 4.6,
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/car_details', arguments: {
                    'carModel': 'Mazda 6 2022',
                    'imagePath': 'assets/car1.png'
                  });
                },
                child: slider_card(
                  imgePath: 'assets/car1.png',
                  carModel: 'Mazda 6',
                  carDescription: 'A sporty and stylish sedan.',
                  newTag: "New",
                  carRating: 4.7,
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/car_details', arguments: {
                    'carModel': 'Subaru Legacy 2022',
                    'imagePath': 'assets/car.png'
                  });
                },
                child: slider_card(
                  imgePath: 'assets/car.png',
                  carModel: 'Subaru Legacy',
                  carDescription: 'A reliable and all-wheel-drive sedan.',
                  newTag: "New",
                  carRating: 4.5,
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
