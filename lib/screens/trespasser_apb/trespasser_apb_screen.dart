// ignore_for_file: prefer_const_constructors


import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'trespasser_apb_controller.dart';
import 'widget/trespasser_card.dart';

class TrespasserAPBScreen extends StatelessWidget {
  TrespasserAPBScreen({Key? key}) : super(key: key);

  TrespasserAPBController trespasserAPBController =
      Get.put(TrespasserAPBController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: "Trespasser APB",
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15,
            ),
            HeadingTextWidget(
              text: "List of Trespassers",
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (contex, index) {
                  return TrespasserCard(
                    onTap: ()=> Get.toNamed(Routes.trespasserApbDetailsScreen,arguments: trespasserAPBController.imageList[0]),
                    image: trespasserAPBController.imageList[index],
                    title: trespasserAPBController.aboutList[1],
                    subtitle: trespasserAPBController.aboutList[2],
                    heading: trespasserAPBController.aboutList[0],
                  );
                }),
            SizedBox(
              height: 25,
            ),
            ButtonWidget(title: "ADD", onTap: () =>Get.offNamed(Routes.addTrespasserDetailsScreen))
          ],
        ),
      ),
    );
  }
}


