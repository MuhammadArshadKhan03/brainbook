import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'retirement_tools_controller.dart';

class RetirementToolsScreen extends StatelessWidget {
  RetirementToolsScreen({Key? key}) : super(key: key);

  RetirementToolsController retirementToolsController =
      Get.put(RetirementToolsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Retirement Tools",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "Retirement tools"),
            SizedBox(height: 20,),
            GridView.builder(
              shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 60,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                ),
                itemCount: retirementToolsController.retiremnetToolsList.length,
                itemBuilder: (context, indux) {
                  return FederalCard(
                    text: retirementToolsController.retiremnetToolsList[indux],
                  );
                })
          ],
        ),
      ),
    );
  }
}
