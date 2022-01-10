// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/rich_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'vehicle_stop_form_controller.dart';

class VehicleStopFormScreen extends StatelessWidget {
  VehicleStopFormScreen({Key? key}) : super(key: key);

  VehicleStopFormController vehicleStopFormController =
      Get.put(VehicleStopFormController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(
        title: "Vehicle Stop Form",
        txtBtnTitle: "Reset",
        onTap: () {},
      ),
      backgroundColor: Colors.blue.shade200,
      body: SingleChildScrollView(
        child: Form(
          key: vehicleStopFormController.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              HeadingTextWidget(
                text: "Please add form details",
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Officer Name",
                controller: vehicleStopFormController.officerName,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Location of Stop",
                controller: vehicleStopFormController.locationOfStop,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Plate Info",
                controller: vehicleStopFormController.plateInfo,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                  title: "Date & Time",
                  controller: vehicleStopFormController.dateTime),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 1,
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "Violation resulting in stop:",
              ),
              SizedBox(
                height: 15,
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.violationList.length,
                  itemBuilder: (context, index) {
                    return Obx(()=> VehicleStopListView(
                      title: vehicleStopFormController.violationList[index],
                      value: vehicleStopFormController.violationList[index],
                      groupValue: vehicleStopFormController
                                 .violationSelectedOption.value ,
                      onChanged: (value){
                        vehicleStopFormController.violation.value = false;
                                vehicleStopFormController
                                     .onChangedViolationOption(value);
                      },
                    )

                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "Result of Stop:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.resultList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => VehicleStopListView(
                        title: vehicleStopFormController.resultList[index],
                        groupValue: vehicleStopFormController
                            .resultSelectedOption.value,
                        value: vehicleStopFormController.resultList[index],
                        onChanged: (value) {
                          vehicleStopFormController.result.value = false;
                          vehicleStopFormController
                              .onChangedResultOption(value);
                        },
                      ),
                    );

                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "Driver’s Race / Minority Status:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.driverStatusList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => VehicleStopListView(
                        title: vehicleStopFormController.driverStatusList[index],
                        value: vehicleStopFormController.driverStatusList[index],
                        groupValue: vehicleStopFormController
                            .driverStatusSelectedOption.value,
                        onChanged: (value) {
                          vehicleStopFormController.driverStatus.value = false;
                          vehicleStopFormController
                              .onChangedDriverStatusOption(value);
                        },
                      ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "Driver’s Age:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.driverAgeList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                          () => VehicleStopListView(
                        title: vehicleStopFormController.driverAgeList[index],
                        value: vehicleStopFormController.driverAgeList[index],
                        groupValue: vehicleStopFormController
                            .driverAgeSelectedOption.value,
                        onChanged: (value) {
                          vehicleStopFormController.driverAge.value = false;
                          vehicleStopFormController
                              .onChangedDriverAgeOption(value);
                        },
                      ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "Driver’s Gender:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.driverGenderList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                          () => VehicleStopListView(
                        title: vehicleStopFormController.driverGenderList[index],
                        value: vehicleStopFormController.driverGenderList[index],
                        groupValue: vehicleStopFormController
                            .driverGenderSelectedOption.value,
                        onChanged: (value) {
                          vehicleStopFormController.driverGender.value = false;
                          vehicleStopFormController
                              .onChangedDriverGenderOption(value);
                        },
                      ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "Is driver a resident of Law Enforcement Agency’s Jurisdiction:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Obx(()=>
                        ListTile(
                          horizontalTitleGap: 3.0,
                          title: Text(
                            "Yes",
                          ),
                          leading: Radio<bool>(
                            groupValue: vehicleStopFormController.agencyJurisdiction!.value,
                            value: false,
                            onChanged: (value){
                              vehicleStopFormController.agencyJurisdiction!.value= !vehicleStopFormController.agencyJurisdiction!.value;
                            },
                            toggleable: true,
                          ),
                        ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "Location of Stop:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.locationStopList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                          () => VehicleStopListView(
                        title: vehicleStopFormController.locationStopList[index],
                        value: vehicleStopFormController.locationStopList[index],
                        groupValue: vehicleStopFormController
                            .locationStopSelectedOption.value,
                        onChanged: (value) {
                          vehicleStopFormController.locationStop.value = false;
                          vehicleStopFormController
                              .onChangedLocationStopOption(value);
                        },
                      ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              HeadingTextWidget(
                text: "Was a search initiated?:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Obx(()=>
                        ListTile(
                          horizontalTitleGap: 3.0,
                          title: Text(
                            "Yes",
                          ),
                          leading: Radio<bool>(
                            groupValue: vehicleStopFormController.searchinitiated!.value,
                            value: false,
                            onChanged: (value){
                              vehicleStopFormController.searchinitiated!.value= !vehicleStopFormController.searchinitiated!.value;
                            },
                            toggleable: true,
                          ),
                        ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "Probable cause for search:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.probaleCauseList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                          () => VehicleStopListView(
                        title: vehicleStopFormController.probaleCauseList[index],
                        value: vehicleStopFormController.probaleCauseList[index],
                        groupValue: vehicleStopFormController
                            .probaleCauseSelectedOption.value,
                        onChanged: (value) {
                          vehicleStopFormController.probaleCause.value = false;
                          vehicleStopFormController
                          .onChangedProbaleCauseOption(value);
                        },
                      ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "What was searched?:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.whatWasSearchList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                          () => VehicleStopListView(
                        title: vehicleStopFormController.whatWasSearchList[index],
                        value: vehicleStopFormController.whatWasSearchList[index],
                        groupValue: vehicleStopFormController
                            .whatWasSearchSelectedOption.value,
                        onChanged: (value) {
                          vehicleStopFormController.whatWasSearch.value = false;
                          vehicleStopFormController
                              .onChangedWhatWasSearchOption(value);
                        },
                      ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),

              HeadingTextWidget(
                text: "Duration of search:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.durationOfSearchList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                          () => VehicleStopListView(
                        title: vehicleStopFormController.durationOfSearchList[index],
                        value: vehicleStopFormController.durationOfSearchList[index],
                        groupValue: vehicleStopFormController
                            .durationOfSearchSelectedOption.value,
                        onChanged: (value) {
                          vehicleStopFormController.durationOfSearch.value = false;
                          vehicleStopFormController
                              .onChangedDurationOfSearchOption(value);
                        },
                      ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              HeadingTextWidget(
                text: "Was Contraband discovered?:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Obx(()=>
                        ListTile(
                          horizontalTitleGap: 3.0,
                          title: Text(
                            "Yes",
                          ),
                          leading: Radio<bool>(
                            groupValue: vehicleStopFormController.contrabandDiscovered!.value,
                            value: false,
                            onChanged: (value){
                              vehicleStopFormController.contrabandDiscovered!.value= !vehicleStopFormController.contrabandDiscovered!.value;
                            },
                            toggleable: true,
                          ),
                        ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "Type of Contraband discovered:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.typeOfContrabandList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                          () => VehicleStopListView(
                        title: vehicleStopFormController.typeOfContrabandList[index],
                        value: vehicleStopFormController.typeOfContrabandList[index],
                        groupValue: vehicleStopFormController
                            .typeOfContrabandSelectedOption.value,
                        onChanged: (value) {
                          vehicleStopFormController.typeOfContraband.value = false;
                          vehicleStopFormController
                              .onChangedTypeOfContrabandOption(value);
                        },
                      ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              HeadingTextWidget(
                text: "Was driver arrested?:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Obx(()=>
                        ListTile(
                          horizontalTitleGap: 3.0,
                          title: Text(
                            "Yes",
                          ),
                          leading: Radio<bool>(
                            groupValue: vehicleStopFormController.driverArrested!.value,
                            value: false,
                            onChanged: (value){
                              vehicleStopFormController.driverArrested!.value= !vehicleStopFormController.driverArrested!.value;
                            },
                            toggleable: true,
                          ),
                        ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(
                text: "If arrest was made, Crime / Violation alleged?:",
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vehicleStopFormController.arrestAllegedList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                          () => VehicleStopListView(
                        title: vehicleStopFormController.arrestAllegedList[index],
                        value: vehicleStopFormController.arrestAllegedList[index],
                        groupValue: vehicleStopFormController
                            .arrestAllegedSelectedOption.value,
                        onChanged: (value) {
                          vehicleStopFormController.arrestAlleged.value = false;
                          vehicleStopFormController
                              .onChangedArrestAllegedOption(value);
                        },
                      ),
                    );
                  }),
              Divider(
                color: Colors.black,
              ),
              RichTextWidget(firstTitle:"Enter the email address you want the report sent to.You will receive an email from ",secondTitle: vehicleStopFormController.emailAdaress,onTap: (){},),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(title: "Lorem ipsum", controller: null,icon: Icon(Icons.email_outlined,color: fontColorLight,),),
              SizedBox(
                height: 15,
              ),
              ButtonWidget(title: "Generate", onTap: (){},),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    ));
  }

 // RxBool select1 = true.obs;

  // RxInt select= 0.obs;
}



class VehicleStopListView extends StatelessWidget {
  const VehicleStopListView({
    Key? key,
    required this.title,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final String groupValue;
  final String value;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 3.0,
      title: Text(
        title,
      ),
      leading: Radio(
        groupValue: groupValue,
        value: value,
        onChanged: onChanged,
        toggleable: false,
      ),
    );
  }
}
