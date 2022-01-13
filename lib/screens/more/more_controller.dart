import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/important_information/important_information_screen.dart';
import 'package:brainbook/screens/redeem_card/redeem_card_screen.dart';
import 'package:brainbook/screens/subscribe/subscribe_screen.dart';
import 'package:brainbook/screens/switch_state/switch_state_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreOptionController extends GetxController{

 List<moreOption>  moreOptionList = [
  moreOption(title: "Important information", image: "assets/startpage/67.png",),
  moreOption(title: "Switch state", image: "assets/startpage/68.png",),
  moreOption(title: "Redeem card", image: "assets/startpage/69.png",),
  moreOption(title: "Subscribe", image: "assets/startpage/70.png",),
 ];

 List<String> moreOptionRoutes = [
  Routes.importantInfoScreen,
  Routes.switchStateScreen,
  Routes.redeemCardScreen,
  Routes.subscribeScreen,
  // ImportantInfoScreen(),
  // SwitchStateScreen(),
  // RedeemCardScreen(),
  // SubscriptionScreen(),
 ];

}
class moreOption{
 moreOption({required this.title,required this.image,});
 final String image;
 final String title;

}