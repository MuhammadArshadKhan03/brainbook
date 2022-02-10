// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_contains, prefer_const_constructors_in_immutables

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen_controller.dart';

class Home extends GetView<HomeController> {
  Home({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //color: Colors.blue,
                height: 120,
                decoration: BoxDecoration(gradient: linearColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    HeadingTextWidget(
                      text: "The ultimate app for police",
                      color: true,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      height: 60,
                      // width: 170,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          //key: controller.globalKey,
                          hint: Text("Select state"),
                          onChanged: (String? value) {
                            controller.val.value=value!;
                          },
                          items: controller.Cities.map((city) {
                            return DropdownMenuItem(
                              value: city,
                              child: Text(city),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabled: false,
                              enabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(12),),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 5,
              // ),
               Container(
                  height: MediaQuery.of(context).size.height / 1.52 ,
                  child: Obx(()=> controller.Cities.indexOf(controller.val.value)==-1? controller.pages[0]:
                  controller.pages[controller.Cities.indexOf(controller.val.value)]),
                ),
              // SizedBox(
              //   height: 9,
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
