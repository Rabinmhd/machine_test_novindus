import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthProvider with ChangeNotifier {
  String? _token;
  bool _isLoading = false;

  bool get isLoading => _isLoading;
  String? get token => _token;

  Future<bool> login(String username, String password) async {
    final url = Uri.parse('https://flutter-amr.noviindus.in/api/Login');
    _isLoading = true;
    notifyListeners();
    print("clicked");

    try {
      final response = await http.post(
        url,
        body: {
          'username': "test_user",
          'password': "12345678",
        },
      );
      print(response.body);

      _isLoading = false;
      notifyListeners();

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        _token = responseData['token'];
        notifyListeners();
        return true;
      } else {
        return false;
      }
    } catch (error) {
      print(error.toString());
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
