// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:convert';

import 'package:brainbook/data/model/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  final String endPoint = "https://pocketbrainbook.herokuapp.com/api/v1/";
  final String registerPath = "user/register";
  final String loginPath = "user/login";
  final String passwordResetPath = "user/password-reset";
  final String verifyCodePath = "user/veryfiy-reset-code";

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

   // print(response.statusCode);
    if (response.statusCode == 200) {
      return [decodedJson["data"]["token"], decodedJson["success"],decodedJson["msg"]];
    } else
      (e) {
        [decodedJson["msg"] as String, response.statusCode];
      };
  }

 Future<dynamic> passwordReset({required String email}) async {
    print("callll");

    final response = await http.post(Uri.parse("$endPoint$passwordResetPath"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "email": email,

        }));
    print(response.body);
    final decodedJson = jsonDecode(response.body);
    print("$decodedJson ddddddddddddddd");
    Get.snackbar("Success", decodedJson["msg"]);

if(decodedJson["success"] == true){
return [decodedJson["msg"],decodedJson["success"]];
}
else{
  decodedJson["msg"];
}
  }


  Future<dynamic> verifyCode({required String code}) async {
    final response = await http.post(Uri.parse("$endPoint$verifyCodePath"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "code":code,
      })
    );
    print(response.body);
    final decodedJson = jsonDecode(response.body);
    if(decodedJson["success"] == true){
      return [decodedJson["userId"],decodedJson["success"],];
    }
    else{
     return decodedJson["msg"];
    }

  }
}
