import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/routes/route_name.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/logo1.png",
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "News App",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff475BD8)),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.signin_screen);
              },
              child: Text("Sign In"),
            ),
            const Text(
              "or",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                  color: Colors.black),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.signup_screen);
                },
                child: Text("Sign Up")),
          ],
        ),
      ),
    );
  }
}
