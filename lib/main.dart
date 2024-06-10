import 'package:flutter/material.dart';
import 'package:machine_test_ayurvedic/provider/login_page_provider.dart';
import 'package:machine_test_ayurvedic/provider/patient_list_provider.dart';
import 'package:provider/provider.dart';
import 'package:machine_test_ayurvedic/presentation/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => AuthProvider()), // Your UserProvider class
        ChangeNotifierProvider(create: (_) => PatientProvider()),
      ],
      child: MaterialApp(
        title: 'Ayurvedic Centre App',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(),
      ),
    );
  }
}
