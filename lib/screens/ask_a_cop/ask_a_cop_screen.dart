// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/ask_cop_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/ask_question/ask_question_screen.dart';
import 'package:brainbook/screens/response/response_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ask_a_cop_controller.dart';

class AskACopScreen extends GetView<AskACopController> {
  const AskACopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  HeadingTextWidget(text: "Discussions"),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                      // itemExtent: 70.0,
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AskACopCard(
                            text:
                                "I am trying to look for a tactical bad that I can put in my car. So that I can use it to store my tactical belt in the bag and probably put my change of clothes in there as well. Do you have any suggestions on tactical bags?",
                          ),
                        );
                      }),
                ],
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 12.0,
              child: InkWell(
                onTap: () => Get.toNamed(Routes.askQuestionScreen),
                child: Image.asset(
                  'assets/startpage/47.png',
                  height: 70.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

