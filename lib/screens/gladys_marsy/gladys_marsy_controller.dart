import 'package:brainbook/screens/gladys_r_admonition/gladys_r_admonition_screen.dart';
import 'package:brainbook/screens/marsys_law/marsys_law_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GladysMarsyController extends GetxController{

  List<String> gladysMarsy =[
    "Gladys R",
    "Marsy`s Law"
  ];
  List<Widget> routes = [
    GladysRAdmonitionScreen(),
    MarsyLawScreen(),
  ];

}