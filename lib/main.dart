import 'package:flutter/material.dart';
import 'package:machine_test_ayurvedic/presentation/pages/patient_list_page.dart';
// import 'package:machine_test_ayurvedic/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PatientListPage(),
    );
  }
}
