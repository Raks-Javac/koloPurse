import 'dart:convert';
import 'package:flutter/widgets.dart';

import 'package:http/http.dart' as http;

class AuthProvider extends ChangeNotifier {
  Future<String> login({String? username, String? password}) async {
    String url =
        "https://f424e9ef-a9e8-41cc-a983-b7699889031f.mock.pstmn.io/login";
    final response = await http.post(Uri.parse(url),
        body: json.encode({"email": username, "password": password}),
        headers: {'Content-Type': 'application/json; charset=utf-8'});
    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else if (response.statusCode == 400) {
      return "login failed";
    } else {
      return "login failed";
    }
  }

  Future<String> register({
    required String fullname,
    required String accountType,
    required String email,
    required String phone,
    required String password,
  }) async {
    String url =
        "https://f424e9ef-a9e8-41cc-a983-b7699889031f.mock.pstmn.io/register";
    final response = await http.post(Uri.parse(url),
        body: json.encode({
          "full_name": fullname,
          "account_type": "personal",
          "phone": phone,
          "email": email,
          "password": password
        }),
        headers: {'Content-Type': 'application/json; charset=utf-8'});
    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else if (response.statusCode == 400) {
      return "registration failed";
    } else {
      return "registration failed";
    }
  }
}
