import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/routes/page_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project/pages/SplashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      getPages: pageRouteApp.pages,
    );
  }
}
