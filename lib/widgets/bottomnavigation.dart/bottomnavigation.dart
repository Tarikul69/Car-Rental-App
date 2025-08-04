import 'package:flutter/material.dart';

class bottomnavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const bottomnavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define dynamic routes based on index
    final List<String> routes = ['/home', '/trips', '/menu'];

    return BottomNavigationBar(
      backgroundColor: Colors.green,
      currentIndex: currentIndex,
      onTap: (index) {
        onTap(index); // Call parent state update if needed
        Navigator.pushNamed(
            context, routes[index]); // Navigate to dynamic route
      },
      selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
      unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
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
    );
  }
}
