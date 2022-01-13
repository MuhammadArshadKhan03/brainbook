import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gang_slang_controller.dart';
import 'widgets/gang_card.dart';

class GangSlangScreen extends GetView<GangSlangController> {
  GangSlangScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: "Gang Slang",
        ),
        body: ListView.builder(
          padding: EdgeInsets.only(top: 20),
          shrinkWrap: true,
          itemCount: controller.gangList.length,
          itemBuilder: (context, index) {
            return GangSlangListWidget(
              onTap: ()=>Get.toNamed(Routes.gangSlangDetailScreen,arguments: controller.gangList[index]),
              text: controller.gangList[index],
            );
          },

        ),
      ),
    );
  }
}

