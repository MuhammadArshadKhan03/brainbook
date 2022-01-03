// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sfts_more_option_controller.dart';

class SFTAMoreOptionScreen extends StatelessWidget {
  SFTAMoreOptionScreen({Key? key}) : super(key: key);

  SFTSMoreOptionController sftsMoreOptionController =
      Get.put(SFTSMoreOptionController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: Get.arguments,
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: HeadingTextWidget(text: "Revised 2015"),
            ),
            SizedBox(
              height: 20,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                  "These manuals are approximately 5-8 MB each. A Wi-Fi connection is recommended.",),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 60,
                  childAspectRatio: 2,
                  //crossAxisSpacing: 3,
                  mainAxisSpacing: 20, crossAxisCount: 2,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return FederalCard(
                    text: sftsMoreOptionController.revised2015[index],
                  );
                }),
            const SizedBox(
              height: 20,
            ),
            Divider(height: 1,color: Colors.black,),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: HeadingTextWidget(text: "Revised 2018"),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                  "The revised 2018 manual is too large to put into this app. Please click on the link yo download."),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 60,
                  childAspectRatio: 2,
                  //crossAxisSpacing: 3,
                  mainAxisSpacing: 20, crossAxisCount: 2,
                ),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return FederalCard(
                    text:"Download Link",
                  );
                }),
          ],
        ),
      ),
    );
  }
}
