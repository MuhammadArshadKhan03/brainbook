// ignore_for_file: prefer_function_declarations_over_variables

import 'package:brainbook/data/provider/user_provider.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginController({required this.userProvider});

  late UserProvider userProvider;
  final _rememberMe = false.obs;

  get rememberMe => _rememberMe.value;

  set rememberMe(value) => _rememberMe.value = value;

  final _obscure = true.obs;

  get obscure => _obscure.value;

  set obscure(value) => _obscure.value = value;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  onLoginTap() async {

    // if (globalKey.currentState!.validate()) {
    //   // emailController.clear();
    //   // passwordController.clear();
    //  // Get.toNamed(Routes.dashBoardScreen);
    // }
    final response = await userProvider.loginUser(
      email: emailController.text,
      password: passwordController.text,
    );

    final tokenOrMsg = response[0];
    final statusCode = response[1];


    if(statusCode == 200) {
      print("$response response");
      print("$tokenOrMsg 22222222222");
    } else {
      print("error: $tokenOrMsg");
    }
  }
}
