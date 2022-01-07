// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/trespasser_apb/trespasser_apb_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_trespasser_details_controller.dart';

class AddTrespasserDetailsScreen extends StatelessWidget {
  AddTrespasserDetailsScreen({Key? key}) : super(key: key);
  AddTrespasserDetailsController addTrespasserDetailsController =
      Get.put(AddTrespasserDetailsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Trespasser APB",
        ),
        backgroundColor: Colors.blue.shade200,
        body: SingleChildScrollView(
          child: Form(
            key: addTrespasserDetailsController.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HeadingTextWidget(text: "Please add Trespasser details"),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Trespass Authorizer",
                  controller: addTrespasserDetailsController.trespassAuth,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Location Name",
                  controller: addTrespasserDetailsController.locationName,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Address",
                  controller: addTrespasserDetailsController.address,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Date & Time",
                  controller: addTrespasserDetailsController.dateTime,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Police Department",
                  controller: addTrespasserDetailsController.policeDept,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Trespasser Name",
                  controller: addTrespasserDetailsController.trespassName,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Other Notes",
                  controller: addTrespasserDetailsController.otherNotes,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 130,
                  child: Card(
                    //  color: Colors.red,
                    child: Center(
                      child: ListTile(
                        title: Text(
                          "Add Photo",
                          style: TextStyle(fontSize: 15, color: fontColorLight),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: GestureDetector(
                          onTap: (){
                            print("Clicked");
                          },
                          child: Image.asset(
                            "assets/startpage/65.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    margin: EdgeInsets.symmetric(horizontal: 19, vertical: 0.0),
                  ),
                ),
                SizedBox(height: 15),
                ButtonWidget(
                  title: "SAVE",
                  onTap: () => Get.off(
                    TrespasserAPBScreen(),
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
