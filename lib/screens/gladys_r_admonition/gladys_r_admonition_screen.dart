import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gladys_r_admonition_controller.dart';


class GladysRAdmonitionScreen extends StatelessWidget {
  GladysRAdmonitionScreen({Key? key}) : super(key: key);

  GladysRAdmonitionController gladysRAdmonitionController = Get.put(GladysRAdmonitionController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: "${Get.arguments} Admonition",
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  // contentPadding: EdgeInsets.only(left: 10.0),
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HeadingTextWidget(
                        text: gladysRAdmonitionController
                            .HeadingList[0]),
                  ),
                  subtitle: Text(
                      gladysRAdmonitionController.DetailList[0]),
                );
              }),
        ),
      ),
    );
  }
}
