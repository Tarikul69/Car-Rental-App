import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Menu',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: Get.height * 0.25,
                        width: Get.width * 0.47,
                        child: Card(
                          elevation: 1,
                          color: const Color.fromARGB(255, 104, 107, 104),
                          child: InkWell(
                            onTap: () {
                              //Navigator.pushNamed(context, '/home');
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 65, 0, 50),
                              child: ListTile(
                                title: Text(
                                  '\$150',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  'Current Balance',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.125,
                            width: Get.width * 0.47,
                            child: Card(
                              elevation: 1,
                              color: const Color.fromARGB(255, 104, 107, 104),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/profile');
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 30, 0, 30),
                                  child: Text(
                                    'Profile',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          SizedBox(
                            height: Get.height * 0.125,
                            width: Get.width * 0.47,
                            child: Card(
                              elevation: 1,
                              color: const Color.fromARGB(255, 104, 107, 104),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/settings');
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 30, 0, 30),
                                  child: Text(
                                    'Settings',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  elevation: 1,
                  color: const Color.fromARGB(255, 104, 107, 104),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'About Us',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
