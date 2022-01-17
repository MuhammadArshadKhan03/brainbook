import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/states.dart';

class HomeController extends GetxController{

   GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  //final GlobalKey homeScreenFormController1 = GlobalKey<FormState>();

  TextEditingController stateController = TextEditingController();

   RxBool? hello = false.obs;

   String city = "";


  List<String> Cities = [
    "California",
    "Illinois",
    "LASD",
    "New York",

  ];

   // final currentIndex = 0.obs;
   //
   // Widget get currentPage => pages[currentIndex.value];

   List<Widget> pages = [
     StateMainHomePage(),
     IllinoisHomePage(),
     Container(color: Colors.yellow,),
     Container(color: Colors.orange,),
   ];



  List<MainHomePage> mainHomePage = [
    MainHomePage(image:"assets/mainhomepage/1.png", text: "Warrants",),
    MainHomePage(image: "assets/mainhomepage/2.png", text: "Federal Codes",),
    MainHomePage(image: "assets/mainhomepage/3.png", text: "Less Lethal",),
    MainHomePage(image: "assets/mainhomepage/4.png", text: "Drugs Related",),
    MainHomePage(image: "assets/mainhomepage/5.png", text: "Translator",),
    MainHomePage(image: "assets/mainhomepage/6.png", text: "Dead Chechlist",),
    MainHomePage(image: "assets/mainhomepage/7.png", text: "Age Calculator",),
    MainHomePage(image: "assets/mainhomepage/8.png", text: "Gang Slang",),
    MainHomePage(image: "assets/mainhomepage/9.png", text: "Trafic Investigation",),
    MainHomePage(image: "assets/mainhomepage/10.png", text: "Testifying Tips",),
    MainHomePage(image: "assets/mainhomepage/11.png", text: "Window Tint laws",),
    MainHomePage(image: "assets/mainhomepage/12.png", text: "SFST’s",),
    MainHomePage(image: "assets/mainhomepage/13.png", text: "Case Law",),
    MainHomePage(image: "assets/mainhomepage/14.png", text: "Gladys R./Marsy`s",),
    MainHomePage(image: "assets/mainhomepage/15.png", text: "Miranda",),
    MainHomePage(image: "assets/mainhomepage/16.png", text: "Keys to Castle",),
    MainHomePage(image: "assets/mainhomepage/17.png", text: "Exigent Circs",),
    MainHomePage(image: "assets/mainhomepage/18.png", text: "Placards",),
    MainHomePage(image: "assets/mainhomepage/19.png", text: "Vechicle Stop Form",),
    MainHomePage(image: "assets/mainhomepage/20.png", text: "VIN Decoder",),
    MainHomePage(image: "assets/mainhomepage/21.png", text: "K-9 Report",),
    MainHomePage(image: "assets/mainhomepage/22.png", text: "Trespasser APB",),
    MainHomePage(image: "assets/mainhomepage/23.png", text: "Front Plates",),
    MainHomePage(image: "assets/mainhomepage/24.png", text: "Amber Alerts",),
    MainHomePage(image: "assets/mainhomepage/25.png", text: "Recruits/Studing",),
    MainHomePage(image: "assets/mainhomepage/26.png", text: "FBI Most Wanted",),
    MainHomePage(image: "assets/mainhomepage/27.png", text: "Subscripition Survey",),
    MainHomePage(image: "assets/mainhomepage/28.png", text: "Retirement Tools",),
    MainHomePage(image: "assets/mainhomepage/29.png", text: "1st Amd `Provokers`",),

  ];

  List<String> mainPageRoutes = [
    Routes.warrantsScreen,
    Routes.federalCodeScreen,
    Routes.lessLethalScreen,
    Routes.drugsRelatedScreen,
    Routes.translatorScreen,
    Routes.deadCheckListScreen,
    Routes.ageCalculationScreen,
    Routes.gangSlangScreen,
    Routes.traficInvestigationScreen,
    Routes.testifyingTipsScreen,
    Routes.windowTintLawsScreen,
    Routes.standardizedFST,
    Routes.caseLawScreen,
    Routes.gladysMarsyScreen,
    Routes.mirandaScreen,
    Routes.keysToCastleScreen,
    Routes.exigentCircumstancesScreen,
   " Container(color: Colors.red,),",
    Routes.vehicleStopFormScreen,
    " Container(color: Colors.red,),",
    " Container(color: Colors.red,),",
    Routes.trespasserAPBScreen,
    Routes.frontPlatesScreen,
    " Container(color: Colors.red,),",
    Routes.recruitsStudyingScreen,
    " Container(color: Colors.red,),",
    Routes.subscriptionSurveyScreen,
    Routes.retirementToolsScreen,
    Routes.firstAmdProvokers,

  ];


   List<IllinoisPage> illinoisPage = [
     IllinoisPage(image: "assets/illinoishomepage/2.png", text: "ISP Districts",),
     IllinoisPage(image: "assets/illinoishomepage/3.png", text: "Common Codes",),
     IllinoisPage(image: "assets/illinoishomepage/4.png", text: "Less Lethal",),
     IllinoisPage(image: "assets/illinoishomepage/5.png", text: "Drugs Related",),
     IllinoisPage(image: "assets/illinoishomepage/6.png", text: "Translator",),
     IllinoisPage(image: "assets/illinoishomepage/7.png", text: "Common Traffic",),
     IllinoisPage(image: "assets/illinoishomepage/8.png", text: "Age Calculator",),
     IllinoisPage(image: "assets/illinoishomepage/9.png", text: "Gang Slang",),
     IllinoisPage(image: "assets/illinoishomepage/10.png", text: "Trafic Investigation",),
     IllinoisPage(image: "assets/illinoishomepage/11.png", text: "Testifying Tips",),
     IllinoisPage(image: "assets/illinoishomepage/12.png", text: "Window Tint laws",),
     IllinoisPage(image: "assets/illinoishomepage/13.png", text: "SFST’s",),
     IllinoisPage(image: "assets/illinoishomepage/14.png", text: "Case Law",),
     IllinoisPage(image: "assets/illinoishomepage/15.png", text: "Gladys R./Marsy`s",),
     IllinoisPage(image: "assets/illinoishomepage/16.png", text: "Miranda",),
     IllinoisPage(image: "assets/illinoishomepage/17.png", text: "Keys to Castle",),
     IllinoisPage(image: "assets/illinoishomepage/18.png", text: "Exigent Circs",),
     IllinoisPage(image: "assets/illinoishomepage/19.png", text: "Weapons",),
     IllinoisPage(image: "assets/illinoishomepage/20.png", text: "Vechicle Stop Form",),
     IllinoisPage(image: "assets/illinoishomepage/21.png", text: "Domestic Violence",),
     IllinoisPage(image: "assets/illinoishomepage/22.png", text: "Theft",),
     IllinoisPage(image: "assets/illinoishomepage/23.png", text: "Trespasser APB",),
     IllinoisPage(image: "assets/illinoishomepage/24.png", text: "Crime Elements",),
     IllinoisPage(image: "assets/illinoishomepage/25.png", text: "Amber Alerts",),
     IllinoisPage(image: "assets/illinoishomepage/26.png", text: "School Related",),
     IllinoisPage(image: "assets/illinoishomepage/27.png", text: "FBI Most Wanted",),
     IllinoisPage(image: "assets/illinoishomepage/28.png", text: "UCR Codes",),
     IllinoisPage(image: "assets/illinoishomepage/29.png", text: "Retirement Tools",),
     IllinoisPage(image: "assets/illinoishomepage/30.png", text: "VIN Codes",),
     IllinoisPage(image: "assets/illinoishomepage/31.png", text: "AOIC Codes",),
     IllinoisPage(image: "assets/illinoishomepage/32.png", text: "Federal Codes",),

   ];

   List<String> illinoisPageRoutes = [
     Routes.iSPDistrictsScreen,
     Routes.commonCodesScreen,
     Routes.lessLethalScreen,
     Routes.drugsRelatedScreen,
     Routes.translatorScreen,
     "Routes.deadCheckListScreen,",
     Routes.ageCalculationScreen,
     Routes.gangSlangScreen,
     Routes.traficInvestigationScreen,
     Routes.testifyingTipsScreen,
     Routes.windowTintLawsScreen,
     Routes.standardizedFST,
     Routes.caseLawScreen,
     Routes.gladysMarsyScreen,
     Routes.mirandaScreen,
     Routes.keysToCastleScreen,
     Routes.exigentCircumstancesScreen,
     Routes.weaponsScreen,
     Routes.vehicleStopFormScreen,
     Routes.domesticViolenceScreen,
     " Container(color: Colors.red,),",
      Routes.trespasserAPBScreen,
     "Routes.frontPlatesScreen,",
     " Container(color: Colors.red,),",
     "Routes.recruitsStudyingScreen,",
     "Routes.recruitsStudyingScreen,",
     "Routes.recruitsStudyingScreen,",
     Routes.retirementToolsScreen,
    " Routes.subscriptionSurveyScreen,",
    " Routes.retirementToolsScreen,",
     Routes.federalCodeScreen,

   ];



}


class MainHomePage {
  void Function()? onTap;
  final String image;
  final String text;

  MainHomePage({required this.image, required this.text,this.onTap});
}

class IllinoisPage {
  void Function()? onTap;
  final String image;
  final String text;

  IllinoisPage({required this.image, required this.text,this.onTap});
}