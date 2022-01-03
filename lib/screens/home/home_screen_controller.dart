import 'package:brainbook/screens/age_calculation/age_calculation_screen.dart';
import 'package:brainbook/screens/case_law/case_law_screen.dart';
import 'package:brainbook/screens/dead_checklist/dead_checklist_screen.dart';
import 'package:brainbook/screens/drugs_related/drugs_related_screen.dart';
import 'package:brainbook/screens/exigent_circumstances/exigent_circumstances_screen.dart';
import 'package:brainbook/screens/federal_codes/federal_code_screen.dart';
import 'package:brainbook/screens/gang_slang/gang_slang_screen.dart';
import 'package:brainbook/screens/gladys_marsy/gladys_marsy_screen.dart';
import 'package:brainbook/screens/keys_to_castle/keys_to_castle_screen.dart';
import 'package:brainbook/screens/less_lethal/less_lethal_screen.dart';
import 'package:brainbook/screens/miranda/miranda_screen.dart';
import 'package:brainbook/screens/recruits_studying/recruits_studying_screen.dart';
import 'package:brainbook/screens/standardized_fsts/standardized_fsts_screen.dart';
import 'package:brainbook/screens/testifying_tips/testifying_tips_screen.dart';
import 'package:brainbook/screens/trafic_investigation/trafic_investigation_screen.dart';
import 'package:brainbook/screens/translator/translator_screen.dart';
import 'package:brainbook/screens/vehicle_stop_form/vehicle_stop_form_screen.dart';
import 'package:brainbook/screens/warrants/warrants_screen.dart';
import 'package:brainbook/screens/window_tint_laws/window_tint_laws_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{



  List<Home> home = [
    Home(image:"assets/mainhomepage/1.png", text: "Warrants",),
    Home(image: "assets/mainhomepage/2.png", text: "Federal Codes",),
    Home(image: "assets/mainhomepage/3.png", text: "Less Lethal",),
    Home(image: "assets/mainhomepage/4.png", text: "Drugs Related",),
    Home(image: "assets/mainhomepage/5.png", text: "Translator",),
    Home(image: "assets/mainhomepage/6.png", text: "Dead Chechlist",),
    Home(image: "assets/mainhomepage/7.png", text: "Age Calculator",),
    Home(image: "assets/mainhomepage/8.png", text: "Gang Slang",),
    Home(image: "assets/mainhomepage/9.png", text: "Trafic Investigation",),
    Home(image: "assets/mainhomepage/10.png", text: "Testifying Tips",),
    Home(image: "assets/mainhomepage/11.png", text: "Window Tint laws",),
    Home(image: "assets/mainhomepage/12.png", text: "SFST’s",),
    Home(image: "assets/mainhomepage/13.png", text: "Case Law",),
    Home(image: "assets/mainhomepage/14.png", text: "Gladys R./Marsy`s",),
    Home(image: "assets/mainhomepage/15.png", text: "Miranda",),
    Home(image: "assets/mainhomepage/16.png", text: "Keys to Castle",),
    Home(image: "assets/mainhomepage/17.png", text: "Exigent Circs",),
    Home(image: "assets/mainhomepage/18.png", text: "Placards",),
    Home(image: "assets/mainhomepage/19.png", text: "Vechicle Stop Form",),
    Home(image: "assets/mainhomepage/20.png", text: "VIN Decoder",),
    Home(image: "assets/mainhomepage/21.png", text: "K-9 Report",),
    Home(image: "assets/mainhomepage/22.png", text: "Trespasser APB",),
    Home(image: "assets/mainhomepage/23.png", text: "Front Plates",),
    Home(image: "assets/mainhomepage/24.png", text: "Amber Alerts",),
    Home(image: "assets/mainhomepage/25.png", text: "Recruits/Studing",),
    Home(image: "assets/mainhomepage/26.png", text: "FBI Most Wanted",),
    Home(image: "assets/mainhomepage/27.png", text: "Subscripition Survey",),
    Home(image: "assets/mainhomepage/28.png", text: "Retirement Tools",),
    Home(image: "assets/mainhomepage/29.png", text: "1st Amd `Provokers`",),

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
    TraficInvestigationScreen(),
    TestifyingTipsScreen(),
    WindowTintLawsScreen(),
    StandardizedFST(),
    CaseLawScreen(),
    GladysMarsyScreen(),
    MirandaScreen(),
    KeysToCastleScreen(),
    ExigentCircumstancesScreen(),
    RecruitsStudyingScreen(),
    VehicleStopFormScreen(),
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