import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{


  final   _obscure = true.obs;
  get obscure => _obscure.value;
  set obscure(value) => _obscure.value=value;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();


  TextEditingController  emailController = TextEditingController();
  TextEditingController    passwordController = TextEditingController();
  TextEditingController    stateController = TextEditingController();



}