import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'trafic_investigation_controller.dart';

class TraficInvestigationScreen extends StatelessWidget {
  TraficInvestigationScreen({Key? key}) : super(key: key);

  TraficInvestigationController traficInvestigationController =
      Get.put(TraficInvestigationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: MyAppBar(
        title: "Traffic Investigation",
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: GridView.builder(
            itemCount: traficInvestigationController.investigationList.length,
            itemBuilder: (context, index) {
              return FederalCard(
                onTap: (){},
                text: traficInvestigationController.investigationList[index],
                isLock: false,
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              // maxCrossAxisExtent: 150,
              mainAxisExtent: 60,
              childAspectRatio: 2,
              //crossAxisSpacing: 3,
              mainAxisSpacing: 20, crossAxisCount: 2,
            )),
      ),
    ));
  }
}
