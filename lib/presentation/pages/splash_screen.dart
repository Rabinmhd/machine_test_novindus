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
        color: Colors.blue,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.flash_on,
                size: 100.0,
                color: Colors.white,
              ),
              SizedBox(height: 20.0),
              Text(
                'Welcome to MyApp',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
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
