// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'flash_card_add_details_controller.dart';

class FlashCardAddDetailsScreen extends StatelessWidget {
   FlashCardAddDetailsScreen({Key? key}) : super(key: key);

   FlashCardAddDetailsController flashCardAddDetailsController = Get.put(FlashCardAddDetailsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(
        title: "Flashcards",
        txtBtnTitle: "Clear",
        onTap: () {
          flashCardAddDetailsController.clearController();
        },
      ),
          backgroundColor: Colors.blue.shade200,
          body: Form(
            key: flashCardAddDetailsController.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20,),
                HeadingTextWidget(text: "Add details"),
                SizedBox(height: 20,),
                TextFormFieldWidget(title: "code", controller: flashCardAddDetailsController.codeController),
                SizedBox(height: 20,),
                TextFormFieldWidget(title: "Description", controller: flashCardAddDetailsController.descriptionController,maxLine: 5,),
                SizedBox(height: 20,),
                ButtonWidget(title: "SAVE", onTap: ()=>Get.back())
              ],
            ),
          ),
    ));
  }
}
