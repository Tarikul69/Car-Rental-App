import 'package:car_rental_app/components/components.dart';
import 'package:car_rental_app/routes/app_routes.dart';
import 'package:car_rental_app/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "Login",
              style: textStyle(),
            ),
            SizedBox(
              height: 15,
            ),
            textFormField(
              hintText: "Enter Email",
              icon: Icons.email,
              //message: "Please enter your email address",
            ),
            SizedBox(
              height: 15,
            ),
            textFormField(
              hintText: "Password",
              icon: Icons.password,
              //message: "Please enter your password",
            ),
            SizedBox(
              height: 15,
            ),
            textButton(
                text: "Forget Password?",
                onPressed: () {
                  Get.toNamed(AppRoutes.forgetpassword);
                }),
            elevatedButton(
              text: "Login",
              onPressed: () {
                Get.offAllNamed(AppRoutes.home);
              },
              color: Colors.black,
            ),
            Row(
              children: [
                Text("Don't have account?"),
                textButton(
                  text: " SignUp",
                  onPressed: () {
                    Get.toNamed(AppRoutes.registration);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
