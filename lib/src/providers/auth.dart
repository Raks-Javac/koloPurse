import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:kolo_purse/src/model/auth.dart';
import 'package:http/http.dart' as http;

class AuthProvider extends ChangeNotifier {
  Future<User?> login(String username, String password) async {
    String url =
        "https://f424e9ef-a9e8-41cc-a983-b7699889031f.mock.pstmn.io/login";
    final response = await http.post(url,
        body: json.encode({"email": username, "password": password}),
        headers: {'Content-Type': 'application/json; charset=utf-8'});
    if (response.statusCode == 200) {
      print(response.body);
      // return User.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 400) {
      return null;
    } else {
      return null;
    }
  }
}
