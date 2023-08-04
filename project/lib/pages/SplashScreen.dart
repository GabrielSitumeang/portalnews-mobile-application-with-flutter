import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/routes/route_name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
                  Get.toNamed(RouteName.start_screen);
                },
                child: Text("Get Started")),
          ],
        ),
      ),
    );
  }
}
