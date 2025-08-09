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
                          color: const Color.fromARGB(255, 191, 190, 190),
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
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  'Current Balance',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
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
                              color: const Color.fromARGB(255, 191, 190, 190),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/profile');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: ListTile(
                                    title: Text(
                                      '1000',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Points Earned',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
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
                              color: const Color.fromARGB(255, 191, 190, 190),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/settings');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: ListTile(
                                    title: Text(
                                      'Platinum',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Customer',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
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
                SizedBox(height: 5),
                Container(
                  width: Get.width * 0.95,
                  child: Card(
                    elevation: 1,
                    color: const Color.fromARGB(255, 191, 190, 190),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/about');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListTile(
                          leading: Icon(Icons.person, color: Colors.black),
                          title: Text(
                            'Profile',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: Get.width * 0.95,
                  child: Card(
                    elevation: 1,
                    color: const Color.fromARGB(255, 191, 190, 190),
                    child: InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, '/payment_methods');
                        Get.toNamed('/payment_methods');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListTile(
                          leading: Icon(Icons.payment, color: Colors.black),
                          title: Text(
                            'Payment Methods',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: Get.width * 0.95,
                  child: Card(
                    elevation: 1,
                    color: const Color.fromARGB(255, 191, 190, 190),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListTile(
                          leading: Icon(Icons.person, color: Colors.black),
                          title: Text(
                            'Logout',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: Colors.black),
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
