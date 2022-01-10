// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/delete_card.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pat_tracker_list_controller.dart';


class PATTrackerScreen extends StatelessWidget {
  PATTrackerScreen({Key? key}) : super(key: key);

  PATTrackerController patTrackerController =
  Get.put(PATTrackerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "PAT Tracker",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "List of PAT Tracker"),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: patTrackerController.pATdateTimeList.length,
              itemBuilder: (context, index) {
                return DeleteCard(
                  text: patTrackerController.pATdateTimeList[index],
                  onTapDelete: () {},
                  onTapCard: ()=>Get.toNamed(Routes.pATTrackerDetailScreen),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            ButtonWidget(
                title: "ADD",
                onTap: () => Get.toNamed(Routes.pATTrackerAddDetailsScreen)),
          ],
        ),
      ),
    );
  }
}