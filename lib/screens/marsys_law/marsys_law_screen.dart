// ignore: file_names
// ignore_for_file: file_names

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'marsys_law_controller.dart';
import 'marsys_law_controller.dart';
import 'marsys_law_controller.dart';


class MarsyLawScreen extends StatelessWidget {
  MarsyLawScreen({Key? key}) : super(key: key);

  MarsyLawController marsyLawController = Get.put(MarsyLawController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: "${Get.arguments}",
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
                      text: marsyLawController
                          .HeadingList[0]),
                  subtitle: Text(
                      marsyLawController.DetailList[0]),
                );
              }),
        ),
      ),
    );
  }
}
