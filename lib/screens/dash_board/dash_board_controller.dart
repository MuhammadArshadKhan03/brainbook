// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/screens/ask_a_cop/ask_a_cop_screen.dart';
import 'package:brainbook/screens/farorites/favorites_screen.dart';
import 'package:brainbook/screens/home/home_screen.dart';
import 'package:brainbook/screens/login/login_screen.dart';
import 'package:brainbook/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favorite_screen.dart';

class DashBoardController extends GetxController {
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
    FavoritesScreen(),
    AskACopScreen(),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.red,
    ),
    // Favorite(),
    // HomeScreen(),
    // FavoriteScreen(),
    // AskACopScreen(),
    // NoteBookScreen(),
    // MoreScreen(),
  ].obs;

  // Widget get currentPage => pages[currentIndex.value];
  //
  // void changePage(int _index) {
  //   if(_index==2){
  //     print(_index);
  //     Get.dialog(
  //         CumtomDialog()
  //     );
  //
  //     //currentIndex.value = _index;
  //   }
  //   currentIndex.value = _index;
  // }

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
    switch (_index) {
      case 0:
        {
          title.value = 'Home';
        }
        break;
      case 1:
        {
          title.value = 'Favorite';
        }
        break;
      case 2:
        {
          title.value = 'Ask a Cop';
          Get.dialog(CumtomDialog());
        }
        break;
      case 3:
        {
          title.value = 'Note';
        }
        break;
      case 4:
        {
          title.value = 'More';
        }
        break;
    }
    print(currentIndex.value);
  }
}



class CumtomDialog extends StatelessWidget {
  CumtomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      //elevation: 0,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 12),
          Text(
            "Welcome to Ask a Cop",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
          ),
          SizedBox(height: 6),
          Text(
              "Talk about anything you want. Pocket Brainbook does not monitor this forum. If you have question visit the FAQ's section",textAlign: TextAlign.center,),
          SizedBox(height: 15),
          Container(
              width: 130,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ButtonWidget(
                title: "Ok",
                onTap: () {},
                padding: EdgeInsets.symmetric(vertical: 10),
                borderRadiusGeometry: BorderRadius.circular(20),
                borderRadiusGeometry2: BorderRadius.circular(20),
              )),
          // Container(
          //   height: 100.h,
          //   width: 300.w,
          //   decoration: BoxDecoration(
          //     gradient: const LinearGradient(
          //         begin: Alignment.centerLeft,
          //         end: Alignment.centerRight,
          //         colors: [
          //           Color(0xff6fa8dc),
          //           Color(0xff3e72a2),
          //           Color(0xff073763),
          //         ]),
          //     borderRadius: BorderRadius.circular(30.r),
          //   ),
          //   child: InkWell(
          //     // highlightColor: Colors.grey[200],
          //     onTap: () => Get.back(),
          //     child: const Center(
          //       child: Text(
          //         "OK",
          //         style: TextStyle(
          //           fontSize: 18.0,
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
