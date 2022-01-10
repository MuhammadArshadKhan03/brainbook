// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/flash_cards/flash_cards_controller.dart';
import 'package:brainbook/screens/recruits_studying/recruits_studying_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlashCardsScreen extends StatelessWidget {
  FlashCardsScreen({Key? key}) : super(key: key);

  FlashCardController flashCardController = Get.put(FlashCardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title:"AOA",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "Recruit Section"),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: flashCardController.flashCardList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: flashCardController.flashCardList[index],
                  onTap: () => Get.to(
                    flashCardController.flashCardRoutes[index],
                    arguments: flashCardController.flashCardList[index],
                  ),
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
