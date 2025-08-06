import 'package:flutter/material.dart';

class trip extends StatelessWidget {
  const trip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Rated Vehicles'),
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
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 10, // Example item count
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.directions_car),
                title: Text('Vehicle ${index + 1}'),
                subtitle: Text('Description of vehicle ${index + 1}'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to vehicle details
                  Navigator.pushNamed(
                    context,
                    '/vehicleDetails',
                    arguments: {
                      'vehicleId': index + 1,
                      'vehicleName': 'Vehicle ${index + 1}',
                      'vehicleImage': 'assets/car.png',
                      'vehicleDescription':
                          'Description of vehicle ${index + 1}',
                      'vehiclePrice': 10000 + (index * 1000),
                      'vehicleRating': 4.5 - (index * 0.1),
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
