
// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'newyork_alcohol_controller.dart';

class NewYorkAlcoholScreen extends GetView<NewYorkAlcoholController> {
  const NewYorkAlcoholScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: MyAppBar(
            title: "Alcohol",
          ),
          backgroundColor: Colors.blue.shade200,
          body: Container(
            margin: EdgeInsets.only(top: 10),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: HeadingTextWidget(
                      text: "Lorem Ipsum",
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(controller.alcoholList[0]),
                    ),
                  );
                }),
          )

      ),
    );
  }
}
