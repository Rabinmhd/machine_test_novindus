import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:http/io_client.dart';

class AuthProvider with ChangeNotifier {
  String? _token;
  bool _isLoading = false;

  bool get isLoading => _isLoading;
  String? get token => _token;

  Future<bool> login(String username, String password) async {
    _isLoading = true;
    notifyListeners();

    try {
      var url = Uri.parse('https://flutter-amr.noviindus.in/api/Login');
      var request = http.MultipartRequest('POST', url);

      request.fields['username'] = username;
      request.fields['password'] = password;

      // Create a custom HttpClient that ignores certificate errors
      HttpClient httpClient = HttpClient()
        ..badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
      IOClient ioClient = IOClient(httpClient);

      var response = await ioClient.send(request);

      if (response.statusCode == 200) {
        var responseBody = await response.stream.bytesToString();
        var jsonResponse = jsonDecode(responseBody);
        _token = jsonResponse['token'];
        // print(jsonResponse);
        _isLoading = false;
        notifyListeners();
        return jsonResponse["status"];
      } else {
        return false;
      }
    } catch (error) {
      // print(error.toString());
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
