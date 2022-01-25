// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mdc_cad_controller.dart';

class MDCScreen extends GetView<MDCController> {
  const MDCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "MDC - CAD",
        ),
        backgroundColor: backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "List of MDC - CAD"),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.mDCList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.mDCList[index],
                  isLock: index!=0 && index!=1,
                  onTap: () {},
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
