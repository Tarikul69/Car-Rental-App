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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'This is the Menu Page...',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add your button action here
                  },
                  child: Text('Button 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your button action here
                  },
                  child: Text('Button 2'),
                ),
              ],
            ),
          ),
        ));
  }
}
