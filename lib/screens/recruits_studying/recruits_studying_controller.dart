import 'package:brainbook/screens/flash_cards/flash_cards_screen.dart';
import 'package:brainbook/screens/pat_tracker_list/pat_tracker_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecruitsStudyingController extends GetxController{

  List<String> recuritList = [
  "Flashcards",
  "Forum",
  "PAT tracker",
  ];
  List<Widget> recuritsROutes = [
    FlashCardsScreen(),
    Container(color: Colors.blue,),
    PATTrackerScreen(),
  ];


}