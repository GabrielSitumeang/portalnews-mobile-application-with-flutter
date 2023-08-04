import 'package:project/pages/SplashScreen.dart';
import 'package:get/get.dart';
import 'package:project/pages/screens/signup_screen.dart';
import 'package:project/pages/screens/signin_screen.dart';
import 'package:project/pages/start_screen.dart';
import 'package:project/routes/route_name.dart';

class pageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.splash_screen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: RouteName.signup_screen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: RouteName.signin_screen,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: RouteName.start_screen,
      page: () => StartScreen(),
    ),
  ];
}
