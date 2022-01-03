// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'vehicle_stop_form_controller.dart';

class VehicleStopFormScreen extends StatelessWidget {
   VehicleStopFormScreen({Key? key}) : super(key: key);

  VehicleStopForm vehicleStopForm = Get.put(VehicleStopForm());
   RxBool violation = false.obs;
   var selectedOption = "Moving".obs;
   onChangedOption(var option){
     selectedOption.value = option;
   }

   List<String> violationList = [
     "Moving",
     "Speeding",
     "Long Violation",
   ];


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
              key: vehicleStopForm.globalKey,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  HeadingTextWidget(text: "Please add form details",),
                  SizedBox(height: 15,),
                  TextFormFieldWidget(title: "Officer Name",controller: vehicleStopForm.officerName,),
                  SizedBox(height: 15,),
                  TextFormFieldWidget(title: "Location of Stop",controller: vehicleStopForm.locationStop,),
                  SizedBox(height: 15,),
                  TextFormFieldWidget(title: "Plate Info",controller: vehicleStopForm.plateInfo,),
                  SizedBox(height: 15,),
                  TextFormFieldWidget(title: "Date & Time",controller: vehicleStopForm.dateTime),
                  SizedBox(height: 15,),
                  Divider(height: 1,color: Colors.black,),
                  SizedBox(height: 15,),
                  HeadingTextWidget(text: "Violation resulting in stop:",),
                  SizedBox(height: 15,),
                  ListView.builder(
                    shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context,index){
                    return  ListTile(
                      title: Text(violationList[index]),
                      leading: Obx(()=>
                          Radio(
                            //activeColor: Colors.white,
                            groupValue: selectedOption.value,
                            value: violationList[index],
                            onChanged: (value) {
                              violation.value=false;
                              onChangedOption(value);
                            },toggleable: false,
                          ),
                      ),
                    );
                  })

                ],
              ),
            ),
          ),
    ));
  }
}
