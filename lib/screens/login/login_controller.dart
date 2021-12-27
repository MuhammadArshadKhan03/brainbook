import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final _rememberMe = false.obs;
  get rememberMe => _rememberMe.value;
  set rememberMe(value) => _rememberMe.value = value;

  final   _obscure = true.obs;
  get obscure => _obscure.value;
  set obscure(value) => _obscure.value=value;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();


  TextEditingController  EmailController = TextEditingController();
  TextEditingController    PasswordController = TextEditingController();



}