// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:convert';

import 'package:brainbook/data/model/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  final String endPoint = "https://pocketbrainbook.herokuapp.com/api/v1/";
  final String registerPath = "user/register";
  final String loginPath = "user/login";

  Future<dynamic> registerUser({
    required String email,
    required String password,
    required String state,
  }) async {
    final response = await http.post(Uri.parse("$endPoint$registerPath"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "email": email,
          "password": password,
          "state": state,
        }));

    final decodedJson = jsonDecode(response.body);

    if (response.statusCode == 201 && decodedJson["success"]) {

      return UserModel.fromJson(decodedJson);
    } else {
      return decodedJson["msg"];
    }
  }

  Future<dynamic> loginUser(
      {required String email, required String password}) async {
    final response = await http.post(Uri.parse("$endPoint$loginPath"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "email": email,
          "password": password,
        }));

    final decodedJson = jsonDecode(response.body);

    print(response.statusCode);
    if (response.statusCode == 200) {
      return [decodedJson["token"] as String?, response.statusCode];
    } else
      (e) {
        [decodedJson["msg"] as String, response.statusCode];
      };
  }

  getUserProfile() {}
}
