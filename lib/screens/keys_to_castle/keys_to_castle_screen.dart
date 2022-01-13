import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'keys_to_castle_controller.dart';



class KeysToCastleScreen extends GetView<KeysToCastleController> {
  KeysToCastleScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: "Keys to Castle",
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  // contentPadding: EdgeInsets.only(left: 10.0),
                  title: HeadingTextWidget(
                      text: controller
                          .HeadingList[0]),
                  subtitle: Text(
                      controller.DetailList[0]),
                );
              }),
        ),
      ),
    );
  }
}
