// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'exigent_circumstances_controller.dart';

class ExigentCircumstancesScreen extends StatelessWidget {
  ExigentCircumstancesScreen({Key? key}) : super(key: key);

  ExigentCircumstanceController exigentCircumstanceController =
      Get.put(ExigentCircumstanceController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MyAppBar(
          title: "Exigent Circumstances",
        ),
        backgroundColor: Colors.blue.shade200,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ignore: prefer_const_constructors
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: HeadingTextWidget(text: "Lorem Ipsum"),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(exigentCircumstanceController.exigentDerail),
              ),
              SizedBox(height: 20,),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListViewText(
                    text: exigentCircumstanceController.exigentList[0],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
