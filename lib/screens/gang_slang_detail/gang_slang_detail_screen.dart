import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gang_slang_detail_controller.dart';

class GangSlangDetailScreen extends GetView<GangDetailController> {
  GangSlangDetailScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: Get.arguments,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Image.asset(
                    favorite,
                    alignment: Alignment.bottomLeft,
                    height: 35,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: Get.arguments),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:  EdgeInsets.only(right: 180.0),
              child: Text("Common Usage",),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:  EdgeInsets.only(right: 180.0),
              child: Text(
                controller.gangDetailListSubtitle[0],
                style: TextStyle(color: fontColorDark),
              ),
            ), const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ), const SizedBox(
              height: 20,
            ),
             Padding(
               padding:  EdgeInsets.only(right: 180.0),
               child: Text("Street Meaning"),
             ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:  EdgeInsets.only(right: 15.0),
              child: Text(
                controller.gangDetailListSubtitle[1],
                style: TextStyle(color: fontColorDark),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   Text(
          //     gangDetailController.gangDetailList[0],
          //     style: TextStyle(color: fontColorDark),
          //   ),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   const Divider(
          //     height: 1,
          //     color: Colors.black,
          //   ),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   const Text("Street Meaning"),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   Text(
          //     gangDetailController.gangDetailList[1],
          //     style: TextStyle(color: fontColorDark),
          //   ),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   const Divider(
          //     height: 1,
          //     color: Colors.black,
          //   ),
          // ],
        ]
        ),
      ),
    );
  }
}
