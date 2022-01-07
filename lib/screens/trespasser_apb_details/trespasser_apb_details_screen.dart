// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'trespasser_apb_details_controller.dart';

class TrespasserApbDetailsScreen extends StatelessWidget {
   TrespasserApbDetailsScreen({Key? key}) : super(key: key);

  TrespasserApbDetailsController trespasserApbDetailsController = Get.put(TrespasserApbDetailsController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Trespasser",
          txtBtnTitle: "Edit",
          onTap: () {},
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: HeadingTextWidget(text: "Trespassers details"),
            ),
            SizedBox(height: 10,),
            Card(
                //color: Colors.red,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)),
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  Get.arguments,
                  width: 330,
                  height: 110,
                )),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Name"),
                    Text("Lorem Ipsum"),
                  ],
                ),
                Column(
                  children: [
                    Text("Name"),
                    Text("Lorem Ipsum"),
                  ],
                ),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Name"),
                    Text("Lorem Ipsum"),
                  ],
                ),
                Column(
                  children: [
                    Text("Name"),
                    Text("Lorem Ipsum"),
                  ],
                ),

              ],
            ),
            SizedBox(height: 20,),
            Text("Other Notes"),
            SizedBox(height: 20,),
            Text("Lorem Ipsum"),
          ],
        ),
      ),
    );
  }
}
