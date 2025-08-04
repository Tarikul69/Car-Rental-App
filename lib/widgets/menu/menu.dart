import 'package:car_rental_app/widgets/bottomnavigation.dart/bottomnavigation.dart';
import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'This is the Menu Page...',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      bottomNavigationBar: bottomnavigation(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
      ),
    );
  }
}
