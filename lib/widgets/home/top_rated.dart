import 'package:flutter/material.dart';

class top_rated extends StatelessWidget {
  const top_rated({super.key});

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
                  Navigator.pushNamed(context, '/car_details');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
