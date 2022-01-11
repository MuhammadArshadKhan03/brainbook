// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ask_question_controller.dart';

class AskQuestionScreen extends StatelessWidget {
  AskQuestionScreen({Key? key}) : super(key: key);

  AskQuestionController askQuestionController =
      Get.put(AskQuestionController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Ask Question",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Form(
          key: askQuestionController.globalkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              HeadingTextWidget(text: "Ask Question"),
              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                title:
                    "Those bags aren’t a bad idea, but a normal duffel bag is good enough. Some agencie",
                maxLine: 3,
                controller: askQuestionController.askquestion,
              ),
              SizedBox(
                height: 20,
              ),
              ButtonWidget(title: "POST", onTap: () {}),
              SizedBox(
                height: 20,
              ),
              TextButton(onPressed: () {}, child: Text("Cancel")),
            ],
          ),
        ),
      ),
    );
  }
}
