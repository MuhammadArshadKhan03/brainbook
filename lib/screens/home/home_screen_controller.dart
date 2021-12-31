import 'package:brainbook/screens/age_calculation/age_calculation_screen.dart';
import 'package:brainbook/screens/dead_checklist/dead_checklist_screen.dart';
import 'package:brainbook/screens/drugs_related/drugs_related_screen.dart';
import 'package:brainbook/screens/federal_codes/federal_code_screen.dart';
import 'package:brainbook/screens/gang_slang/gang_slang_screen.dart';
import 'package:brainbook/screens/less_lethal/less_lethal_screen.dart';
import 'package:brainbook/screens/translator/translator_screen.dart';
import 'package:brainbook/screens/warrants/warrants_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{



  List<Home> home = [
    Home(image:"assets/15.png", text: "Warrants",),
    Home(image: "assets/16.png", text: "Federal Codes",),
    Home(image: "assets/17.png", text: "Less Lethal",),
    Home(image: "assets/18.png", text: "Drugs Related",),
    Home(image: "assets/19.png", text: "Translator",),
    Home(image: "assets/20.png", text: "Dead Chechlist",),
    Home(image: "assets/21.png", text: "Age Calculator",),
    Home(image: "assets/22.png", text: "Gang Slang",),
    Home(image: "assets/23.png", text: "Trafic Investigation",),
    Home(image: "assets/24.png", text: "Testifying Tips",),
    Home(image: "assets/25.png", text: "Recruits / Studying",),
    Home(image: "assets/26.png", text: "SFST’s",),
    Home(image: "assets/26.png", text: "Window Tint laws",),
    Home(image: "assets/26.png", text: "Case Law",),
    Home(image: "assets/26.png", text: "Gladys R./Marsy`s",),
    Home(image: "assets/26.png", text: "Miranda",),
    Home(image: "assets/26.png", text: "Keys to Castle",),
    Home(image: "assets/26.png", text: "Exigent Circs",),
    Home(image: "assets/26.png", text: "Placards",),
    Home(image: "assets/26.png", text: "Vechicle Stop Form",),
    Home(image: "assets/26.png", text: "VIN Decoder",),
    Home(image: "assets/26.png", text: "K-9 Report",),
    Home(image: "assets/26.png", text: "Trespasser APB",),
    Home(image: "assets/26.png", text: "Front Plates",),
    Home(image: "assets/26.png", text: "Amber Alerts",),
    Home(image: "assets/26.png", text: "FBI Most Wanted",),
    Home(image: "assets/26.png", text: "Subscripition Survey",),
    Home(image: "assets/26.png", text: "Retirement Tools",),
    Home(image: "assets/26.png", text: "1st Amd `Provokers`",),

  ];

  List<Widget> routes = [
    Warrants(),
    FederalCode(),
    LessLethal(),
    DrugsRelated(),
    TranslatorScreen(),
    DeadCheckListScreen(),
    AgeCalculationScreen(),
    GangSlangScreen(),
   Container(color: Colors.red,),
   Container(color: Colors.yellow,),
   Container(color: Colors.pink,),
   Container(color: Colors.orange,),

  ];

}

class Home {
  void Function()? onTap;
  final String image;
  final String text;

  Home({required this.image, required this.text,this.onTap});
}