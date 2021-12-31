import 'package:brainbook/screens/common_phrases/common_phrase_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorController extends GetxController{

  List SpeakList =[
    "French",
    "Spanish",
    "French",
    "Spanish",
    "French",
    "Spanish",
    "French",
    "Spanish",
  ];
  List PointList =[
    "French",
    "Spanish",
    "French",
    "Spanish",
  ];

  List SpeakImagesList = [
    "assets/34.png",
    "assets/35.png",
    "assets/36.png",
    "assets/37.png",
    "assets/38.png",
    "assets/39.png",
    "assets/40.png",
    "assets/41.png",
  ];
  List PointImagesList = [
    "assets/34.png",
    "assets/35.png",
    "assets/36.png",
    "assets/37.png",
  ];


  List<Widget> routes = [
    CommonPhraseScreen()


  ];
}