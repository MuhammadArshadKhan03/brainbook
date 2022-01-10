// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/recruits_studying/recruits_studying_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecruitsStudyingScreen extends StatelessWidget {
  RecruitsStudyingScreen({Key? key}) : super(key: key);

  RecruitsStudyingController recruitsStudyingController =
      Get.put(RecruitsStudyingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Recruits / Studying",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "Recrut Section"),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: recruitsStudyingController.recuritList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: recruitsStudyingController.recuritList[index],
                  onTap: () => Get.to(
                      recruitsStudyingController.recuritsROutes[index],
                      arguments: recruitsStudyingController.recuritList[index]),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 60,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
