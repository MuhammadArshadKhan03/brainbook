// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/home_card.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen_controller.dart';

class Home extends GetView<HomeController> {
  Home({Key? key}) : super(key: key);

  // HomeController homeController = Get.put(HomeController());
   var val= "".obs ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        // backgroundColor: containerColor,
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
                          //value: controller.currentIndex.value,
                          // itemHeight: 70,
                          isExpanded: true,
                          key: controller.globalKey,
                          hint: Text("Select state"),
                          //onTap: controller.c,
                          onChanged: (String? value) {
                            print(value);
                           // print(value!);
                            val.value = value!;
                            print(
                                "${controller.Cities.indexOf(value)} this is index value");
                            // controller.hello!.value = true;
                            //controller.Cities.indexOf(value)==controller.changePage?print(" hello"):print("Not hello");
                            // controller.changePage;
                            // controller.Cities.indexOf(value!);
                            //  controller.city =
                            //      controller.Cities.indexOf(value).toString();
                          },
                          items: controller.Cities.map((city) {
                            return DropdownMenuItem(
                              value: city,
                              // onTap: () => controller.changePage,
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
               Container(
                  height: 470,
                  child: Obx(()=> controller.Cities.indexOf(val.value)==-1? controller.pages[0]:
                  controller.pages[controller.Cities.indexOf(val.value)]),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
