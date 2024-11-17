import 'package:flutter/material.dart';
import 'package:qoutes_app/screens/home_page.dart';
import 'package:qoutes_app/screens/detail.dart';
import 'package:qoutes_app/screens/splashscreen.dart';

class Routes {
  static String splash = "/";
  static String home = "home_page";
  static String detail = "detail_page";

  static Map<String, WidgetBuilder> myRoutes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomePage(),
    detail: (context) => const DetailPage(),
  };
}
