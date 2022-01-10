// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pta_tracker_add_details_controller.dart';

class PATTrackerAddDetailsScreen extends StatelessWidget {
   PATTrackerAddDetailsScreen({Key? key}) : super(key: key);

   PATTrackerAddDetailController patTrackerAddDetailController = Get.put(PATTrackerAddDetailController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "PAT Tracker",
          txtBtnTitle: "Clear",
          onTap: () {
            patTrackerAddDetailController.clearController();
          },
        ),
        backgroundColor: Colors.blue.shade200,
        body: SingleChildScrollView(
          child: Form(
           key: patTrackerAddDetailController.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HeadingTextWidget(text: "PAT tracker details"),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Running Time", controller: patTrackerAddDetailController.runningTime),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Pushups", controller: patTrackerAddDetailController.pushups),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Other Activity time", controller: patTrackerAddDetailController.otherActvity),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Situps", controller: patTrackerAddDetailController.situps),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Obstacle course time", controller: patTrackerAddDetailController.obstacleCourse),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Date time required", controller: patTrackerAddDetailController.dateTimeReq),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Pullups", controller: patTrackerAddDetailController.pullups),
                SizedBox(height: 10,),
                ButtonWidget(title: "SAVE", onTap: (){}),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
