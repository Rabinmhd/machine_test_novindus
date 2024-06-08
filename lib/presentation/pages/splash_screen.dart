import 'dart:async';

import 'package:flutter/material.dart';
import 'package:machine_test_ayurvedic/presentation/pages/my_home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _navigateToHome(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash_screen_backround.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void _navigateToHome(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    });
  }
}
