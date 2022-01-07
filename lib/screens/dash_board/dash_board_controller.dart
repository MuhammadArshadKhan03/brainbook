import 'package:brainbook/screens/home/home_screen.dart';
import 'package:brainbook/screens/login/login_screen.dart';
import 'package:brainbook/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favorite_screen.dart';

class DashBoardController extends GetxController{

  final name = 'Lorem Ipsum';
  final email = 'Loremipsum@gmail.com';
  final currentIndex = 0.obs;
  final title = "Home".obs;

  List<String> bottomItem = [
    "Home",
    "Favorite",
    "Ask a Cop",
    "Note",
    "More",
  ];

  List<String> bottomImages = [
    "assets/startpage/HomeIcon.png",
    "assets/startpage/44.png",
    "assets/startpage/45.png",
    "assets/startpage/57.png",
    "assets/startpage/more.png",
  ];

  List<String> drawerImages = [
    "assets/startpage/76.png",
    "assets/startpage/77.png",
    "assets/startpage/78.png",
    "assets/startpage/79.png",
    "assets/startpage/80.png",
    "assets/startpage/75.png",
    "assets/startpage/74.png",
  ];

  List<String> drawerTitle = [
    "Profile",
    "Setting",
    "FAQs",
    "Go offline",
    "Support",
    "Privacy",
    "Logout",
  ];


  RxList<Widget> pages = [
    Home(),
    Container(color: Colors.blue,),
    Container(color: Colors.pink,),
    Container(color: Colors.orange,),
    Favorite(),
    // HomeScreen(),
    // FavoriteScreen(),
    // AskACopScreen(),
    // NoteBookScreen(),
    // MoreScreen(),
  ].obs;

  Widget get currentPage => pages[currentIndex.value];

  void changePage(int _index) {
    // if(_index==2){
    //   print(_index);
    //   // Get.dialog(
    //   //    // CumtomDialog()
    //   // );
    //
    //   //currentIndex.value = _index;
    // }

    currentIndex.value = _index;
    switch(_index) {
      case 0: { title.value = 'Home'; }
      break;
      case 1: { title.value = 'Favorite'; }
      break;
      case 2: { title.value = 'Ask a Cop'; }
      break;
      case 3: { title.value = 'Note'; }
      break;
      case 4: { title.value = 'More'; }
      break;
    }
    print(currentIndex.value);
  }
}