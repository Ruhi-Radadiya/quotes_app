import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qoutes_app/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, Routes.home),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28353b),
      body: Column(
        children: [
          const Spacer(),
          Image.network(
            "https://cdn.dribbble.com/users/3001763/screenshots/6424725/q_dribbble_800x600.gif",
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
