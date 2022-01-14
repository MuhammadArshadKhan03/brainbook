import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/faqs_detail/faqs_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FAQsDetailScreen extends GetView<FAQsDetailController> {
  const FAQsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "FAQ`s",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15,),
            HeadingTextWidget(text: Get.arguments),
            SizedBox(height: 15,),
            Divider(color: Colors.black,),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 14.0,right: 14),
              child: Text(controller.detailList[0]),
            )
          ],
        ),
      ),
    );
  }
}
