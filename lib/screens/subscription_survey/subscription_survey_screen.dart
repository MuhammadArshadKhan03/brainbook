// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/screens/vehicle_stop_form/vehicle_stop_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'subscription_survey_controller.dart';

class SubscriptionSurveyScreen extends StatelessWidget {
  SubscriptionSurveyScreen({Key? key}) : super(key: key);

  SubcriptionSurveyController subcriptionSurveyController =
      Get.put(SubcriptionSurveyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Subscription Survey",
        ),
        backgroundColor: Colors.blue.shade200,
        body: SingleChildScrollView(
          child: Form(
            key: subcriptionSurveyController.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 10,
                ),
                HeadingTextWidget(text: "Will you re-subscribe next year?"),
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: subcriptionSurveyController.resubscribeList.length,
                    itemBuilder: (context, index) {
                      return Obx(() => VehicleStopListView(
                            title: subcriptionSurveyController
                                .resubscribeList[index],
                            value: subcriptionSurveyController
                                .resubscribeList[index],
                            groupValue: subcriptionSurveyController
                                .resubscribeSelectedOption.value,
                            onChanged: (value) {
                              subcriptionSurveyController.resubscribe.value =
                                  false;
                              subcriptionSurveyController
                                  .onChangedresubscribeOption(value);
                            },
                          ));
                    }),
                HeadingTextWidget(text: "Why?"),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  title: "Write Something",
                  controller: subcriptionSurveyController.writesomething1,
                  maxLine: 3,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                HeadingTextWidget(text: "Let us know. If we can do it, we will."),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  title: "Email",
                  controller: subcriptionSurveyController.email,
                  icon: Icon(Icons.email_outlined),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  title: "Write Something",
                  controller: subcriptionSurveyController.writesomething2,
                  maxLine: 3,
                ),
                SizedBox(
                  height: 10,
                ),
                ButtonWidget(title: "Submit", onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
