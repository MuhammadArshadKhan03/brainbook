import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'age_result_controller.dart';

class AgeResultScreen extends StatelessWidget {
   AgeResultScreen({Key? key}) : super(key: key);

   AgeResult ageResult = Get.put(AgeResult());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MyAppBar(
          title: "Age Calculator",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.only(right: 168.0),
              child: HeadingTextWidget(text: "Here are the results",),
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: ageResult.ageresult.length,
                  itemBuilder: (context,index){
                return Column(children:[
                  const SizedBox(height: 20,),
                  HeadingTextWidget(text: ageResult.ageresult[index],color: index == 1 || index ==3,textColor: fontColorDark,)
                ]);
              }),
            ),
            // HeadingTextWidget(text: "Date of birth before today"),
            // SizedBox(height: 30,),
            // HeadingTextWidget(text: "31"),
            // SizedBox(height: 30,),
            // HeadingTextWidget(text: "Date of birth before today"),
            // SizedBox(height: 30,),
            // HeadingTextWidget(text: "31"),
            // SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}
