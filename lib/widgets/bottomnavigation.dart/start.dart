import 'package:car_rental_app/trip/trip.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:car_rental_app/widgets/home/home.dart';
import 'package:car_rental_app/widgets/menu/menu.dart';

class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    home(),
    trip(),
    menu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
              //topLeft: Radius.circular(10),
              //topRight: Radius.circular(10),
              ),
        ),
        child: SafeArea(
          maintainBottomViewPadding: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GNav(
              gap: 8,
              backgroundColor: Colors.green,
              activeColor: Colors.white,
              color: const Color.fromARGB(255, 0, 0, 0),
              tabBackgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              tabs: const [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.list_alt, text: 'Trips'),
                GButton(icon: Icons.menu, text: 'Menu'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
