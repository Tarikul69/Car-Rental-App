import 'package:flutter/material.dart';

class trip extends StatelessWidget {
  const trip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip Details'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'This is the Trip Page...',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        currentIndex: 1, // Assuming this is the Trips page
        onTap: (index) {
          // Handle navigation based on index
        },
      ),
    );
  }
}
