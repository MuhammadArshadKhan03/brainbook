// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/window_tint_laws/widgets/front_plates_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'front_plates_controller.dart';

class FrontPlatesScreen extends StatelessWidget {
  FrontPlatesScreen({Key? key}) : super(key: key);
  static const int? $bull = 0x2022;

  FrontPlatesController frontPlatesController =
      Get.put(FrontPlatesController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: "Front Plates",txtBtnTitle: "Edit",onTap: (){},),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15,
            ),
            HeadingTextWidget(text: "Front License Plates"),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 330,
              margin: EdgeInsets.only(left: 7, right: 7),
              height: 270,
              // color: Colors.blue,
              child: Card(
                color: Colors.white,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white)),
                child: Column(
                  children: [
                    Text(
                      "Required",
                      style: TextStyle(
                          color: fontColorLight, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(left: 10),
                        itemCount: frontPlatesController.requiredLIst.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 4,
                          crossAxisCount: 3,
                          mainAxisSpacing: 1.0,
                          crossAxisSpacing: 1.0,
                        ),
                        itemBuilder: (context, indux) {
                          return FrontPlateRichText(
                            text: frontPlatesController.requiredLIst[indux],
                          );
                        }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 330,
              height: 270,
              margin: EdgeInsets.only(left: 7, right: 7),
              // color: Colors.blue,
              child: Card(
                // margin: EdgeInsets.only(left: 20,right: 20,top: 40,bottom: 40),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white)),

                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      "Not Required",
                      style: TextStyle(
                          color: fontColorLight, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(left: 10),
                        itemCount: frontPlatesController.notRequiredLIst.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 4,
                          crossAxisCount: 3,
                          mainAxisSpacing: 1.0,
                          crossAxisSpacing: 1.0,
                        ),
                        itemBuilder: (context, index) {
                          return FrontPlateRichText(text: frontPlatesController.notRequiredLIst[index],);
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
