// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/delete_card.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'flash_cards_list_controller.dart';

class FlashCardsListScreen extends StatelessWidget {
  FlashCardsListScreen({Key? key}) : super(key: key);

  FlashCardListController flashCardListController =
      Get.put(FlashCardListController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Flashcard 1",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "List of Flash Cards"),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: flashCardListController.flashCardList.length,
              itemBuilder: (context, index) {
                return DeleteCard(
                  text: flashCardListController.flashCardList[index],
                  onTapDelete: () {},
                  onTapCard: (){},
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            ButtonWidget(
                title: "ADD",
                onTap: () => Get.toNamed(Routes.flashCardAddDetailsScreen)),
          ],
        ),
      ),
    );
  }
}

