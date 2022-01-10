// ignore_for_file: file_names, prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '1st_amd_provokers_controller.dart';

class IstAmdProvokers extends StatelessWidget {
   IstAmdProvokers({Key? key}) : super(key: key);

   IstAmdProvokersController istAmdProvokersController = Get.put(IstAmdProvokersController());

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(
        title: "1st Amd Provokers",
      ),
          backgroundColor: Colors.blue.shade200,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),
              HeadingTextWidget(text: "1st Amd Provokers"),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("They call themselves 1st Amendment Auditors. They should be called “Provokers” because that’s exactly what they do. They travel aal over the US harassing public civilian employees and police officers in hopes to obtain a favorable lawsuit and social media folowwers."),
              ),
              Divider(color: Colors.black,),
              HeadingTextWidget(text: "Here are some options"),
              SizedBox(height: 20,),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 60,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                  ),
                  itemCount: istAmdProvokersController.optionList.length,
                  itemBuilder: (context, indux) {
                    return FederalCard(
                      text: istAmdProvokersController.optionList[indux],
                    );
                  }),
            ],
          ),
    ));
  }
}
