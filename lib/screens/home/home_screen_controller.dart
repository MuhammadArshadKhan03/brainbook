import 'package:brainbook/routes/app_routes.dart';
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

  List<String> routes = [
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

}

class Home {
  void Function()? onTap;
  final String image;
  final String text;

  Home({required this.image, required this.text,this.onTap});
}