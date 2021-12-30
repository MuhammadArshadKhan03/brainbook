import 'package:brainbook/core/theme/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drugs_related_controller.dart';

class DrugsRelated extends StatelessWidget {
  DrugsRelated({Key? key}) : super(key: key);

  DrugsRelatedController drugsRelatedController = Get.put(DrugsRelatedController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: containerColor,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: linearColor),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        title: Text("Drugs Related"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child:GridView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 10.0),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.circular(10)),
                        child: Center(
                          child: Text(drugsRelatedController.draugsList[index],style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 10.0,
                      child:  index == 0 || index == 1 || index ==5
                          ? Image.asset(
                        "assets/85.png",
                        height: 30,
                      )
                          : Container()

                  ),
                ],
              );
            },
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              // maxCrossAxisExtent: 150,
              mainAxisExtent: 60,
              childAspectRatio: 2,
              //crossAxisSpacing: 3,
              mainAxisSpacing: 20, crossAxisCount: 2,
            )) ,
      ),
    ));
  }
}