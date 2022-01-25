// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/main/recruits_studying/recruits_studying_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecruitsStudyingScreen extends GetView<RecruitsStudyingController> {
  RecruitsStudyingScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Recruits / Studying",
        ),
        backgroundColor: backgroundColor,
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
              itemCount: controller.recuritList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.recuritList[index],
                  onTap: () => Get.toNamed(
                      controller.recuritsROutes[index],
                      arguments: controller.recuritList[index]),
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
