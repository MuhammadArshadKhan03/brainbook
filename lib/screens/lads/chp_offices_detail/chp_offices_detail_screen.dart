// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chp_offices_detail_controller.dart';


class CHPOfficesDetailScreen extends GetView<CHPOfficesDetailController> {
  const CHPOfficesDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: Get.arguments,image: true,
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 10,
            ),
            ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 75,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    // width: 320,
                    child: Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                      child: Center(
                          child: HeadingTextWidget(
                            text: controller.cHPOfficesDetailList[index],
                            color: index == 0,
                            textColor: fontColorLight,
                          )),
                    ),
                  );
                }),
            SizedBox(
              height: 10,
            ),
            ButtonWidget(title: "CALL",onTap: (){},icon: Icon(Icons.phone),)
          ],
        ),
      ),
    );
  }
}
