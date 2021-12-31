import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'age_calculation_controller.dart';

class AgeCalculationScreen extends StatelessWidget {
   AgeCalculationScreen({Key? key}) : super(key: key);

  AgeCalcutaionController ageCalcutaionController = Get.put(AgeCalcutaionController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: "Age Calculator",
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Form(
            key: ageCalcutaionController.ageGlobalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20,),
                const HeadingTextWidget(text:  "Please enter the year which you were born",),
                const SizedBox(height: 30,),
                TextFormFieldWidget(title: "Enter year",obscureText: true,controller: ageCalcutaionController.ageController,),
                const SizedBox(height: 20,),
                ButtonWidget(title: "Calculate",onTap: ()=>Get.toNamed(Routes.ageResultScreen),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}