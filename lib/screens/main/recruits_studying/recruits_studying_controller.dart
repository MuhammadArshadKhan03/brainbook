import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/main/flash_cards/flash_cards_screen.dart';
import 'package:brainbook/screens/main/pat_tracker_list/pat_tracker_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecruitsStudyingController extends GetxController{

  List<String> recuritList = [
  "Flashcards",
  "Forum",
  "PAT tracker",
  ];
  List<String> recuritsROutes = [
    Routes.flashCardsScreen,
    "This is empty",
    Routes.pATTrackerListScreen
    // FlashCardsScreen(),
    // Container(color: Colors.blue,),
    // PATTrackerScreen(),
  ];


}