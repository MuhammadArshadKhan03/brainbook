
// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pursuits_controller.dart';

class PursuitsScreen extends GetView<PursuitsController> {
  const PursuitsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Pursuits",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "List of Pursuits"),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.pursuitsCardList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.pursuitsCardList[index],
                  isLock: true,
                  onTap: () {},
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 60,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
