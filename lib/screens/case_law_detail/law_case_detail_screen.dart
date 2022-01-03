import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'case_law_detail_controller.dart';

class CaseLawDetailScreen extends StatelessWidget {
  CaseLawDetailScreen({Key? key}) : super(key: key);

  CaseLawDetailController lawCaseDetailController = Get.put(CaseLawDetailController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: Get.arguments,
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
                        text: lawCaseDetailController
                            .HeadingList[index]),
                  ),
                  subtitle: Text(
                      lawCaseDetailController.DetailList[0]),
                );
              }),
        ),
      ),
    );
  }
}
