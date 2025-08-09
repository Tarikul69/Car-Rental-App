import 'package:car_rental_app/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class contact_form extends StatefulWidget {
  const contact_form({super.key});

  @override
  State<contact_form> createState() => _contact_formState();
}

class _contact_formState extends State<contact_form>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final args = Get.arguments;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Form',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.4,
              width: Get.width,
              child: Card(
                color: const Color.fromARGB(255, 222, 221, 221),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        args['imagePath'],
                        height: Get.height * 0.2,
                        width: Get.width * 0.8,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Model:${args['carModel']}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Description: ${args['carDescription']}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 5),
                      Text(
                        '${args['carRent']}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Add your contact form widgets here
            const SizedBox(height: 20),
            textFormField(hintText: "data", icon: Icons.person),
            const SizedBox(height: 10),
            textFormField(hintText: "Email", icon: Icons.email),
            const SizedBox(height: 10),
            textFormField(hintText: "Phone", icon: Icons.phone),
            const SizedBox(height: 10),
            textFormField(hintText: "Address", icon: Icons.location_on),
            const SizedBox(height: 10),
            textFormField(hintText: "Date", icon: Icons.date_range),
            const SizedBox(height: 10),
            textFormField(hintText: "Message", icon: Icons.message),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 22),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(55),
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
          ),
          onPressed: () {
            // Handle form submission
          },
          child: const Text('Rent',
              style: TextStyle(fontSize: 16, color: Colors.white)),
        ),
      ),
    );
  }
}
