// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/screens/bellwood_pd/bellwood_pd_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BellwoodPDScreen extends GetView<BellwoodPDController> {
  const BellwoodPDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Bellwood PD",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          children: [
            SizedBox(height: 30,),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.bellwoodList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.bellwoodList[0],
                  isLock: true,
                  // onTap: () => Get.toNamed(
                  //   controller.deptRoutes[index],
                  // ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 60,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
