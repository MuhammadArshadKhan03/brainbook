import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/main/gladys_r_admonition/gladys_r_admonition_screen.dart';
import 'package:brainbook/screens/main/marsys_law/marsys_law_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GladysMarsyController extends GetxController{

  List<String> gladysMarsy =[
    "Gladys R",
    "Marsy`s Law"
  ];
  List<String> routes = [
    Routes.gladysAdmonitionScreen,
    Routes.marsyLawScreen,
    // GladysRAdmonitionScreen(),
    // MarsyLawScreen(),
  ];

}