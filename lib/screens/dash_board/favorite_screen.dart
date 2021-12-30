import 'package:brainbook/screens/dash_board/dash_board_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favorite extends GetView<DashBoardController> {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
      ),

    );
  }
}
