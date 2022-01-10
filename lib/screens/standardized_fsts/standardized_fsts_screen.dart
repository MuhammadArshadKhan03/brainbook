import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'standardized_fsts_controller.dart';

class StandardizedFST extends StatelessWidget {
  StandardizedFST({Key? key}) : super(key: key);

  StandardizedFSTController standardizedFSTController =
      Get.put(StandardizedFSTController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: "Standardized FST`s",
        ),
        body: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    // contentPadding: EdgeInsets.only(left: 10.0),
                    title: HeadingTextWidget(
                        text: standardizedFSTController
                            .standardizedFSTHeadingList[index]),
                    subtitle: Text(
                        standardizedFSTController.standardizedFSTDetailList[0]),
                  );
                }),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200.0),
              child: HeadingTextWidget(
                text: "More Options",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 60,
                  childAspectRatio: 2,
                  //crossAxisSpacing: 3,
                  mainAxisSpacing: 20, crossAxisCount: 2,
                ),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return FederalCard(
                    text: standardizedFSTController.moreOptionList[index],
                    onTap: () =>
                        index == 1
                            ? Get.toNamed(Routes.nHTSAManualScreen,
                                arguments:
                                    standardizedFSTController.moreOptionList[1])
                            : null,
                  );
                })
          ],
        ),
      ),
    );
  }
}
