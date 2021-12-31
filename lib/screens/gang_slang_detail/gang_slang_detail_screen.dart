import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GangSlangDetailScreen extends StatelessWidget {
  const GangSlangDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar:  MyAppBar(
          title: Get.arguments,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              favorite,
              height: 35,
            ),
            const SizedBox(
              height: 20,
            ),
             HeadingTextWidget(text: Get.arguments),
            const SizedBox(
              height: 20,
            ),
            const Text("Common Usage"),
            const SizedBox(
              height: 20,
            ),
            const Text("General Terms"),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Street Meaning"),
            const SizedBox(
              height: 20,
            ),
            const Text("A young member about 9 to 12 years old"),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
