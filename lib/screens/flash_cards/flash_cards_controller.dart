import 'package:brainbook/screens/flash_cards_list/flash_cards_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlashCardController extends GetxController{

  List<String> flashCardList = [
    "Flashcard 1",
    "Flashcard 2",
    "Flashcard 3",
    "Flashcard 4",
    "Flashcard 5",
  ];

  List<Widget> flashCardRoutes = [
    FlashCardsListScreen(),
    Container(color: Colors.blue,),
    Container(color: Colors.blue,),
    Container(color: Colors.blue,),
    Container(color: Colors.blue,),

  ];
}