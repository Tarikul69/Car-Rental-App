import 'package:flutter/material.dart';

class onebording extends StatelessWidget {
  const onebording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding Screen'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'Welcome to the Onboarding Screen',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
