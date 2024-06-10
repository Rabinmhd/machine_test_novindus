import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:machine_test_ayurvedic/models/patient_model.dart';
import 'package:machine_test_ayurvedic/utils/api.dart';

class PatientProvider with ChangeNotifier {
  List<Patient> _patients = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Patient> get patients => _patients;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> fetchPatients(String token) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      print("try called");
      final response = await http.get(
        Uri.parse("${baseUrl}PatientList"),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        print(response.body);

        print("success");
        List jsonResponse = json.decode(response.body);
        _patients =
            jsonResponse.map((patient) => Patient.fromJson(patient)).toList();
        _isLoading = false;
      } else {
        _isLoading = false;
        _errorMessage = 'Failed to load patients';
      }
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
