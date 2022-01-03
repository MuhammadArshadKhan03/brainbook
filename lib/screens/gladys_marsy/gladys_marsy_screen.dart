import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gladys_marsy_controller.dart';

class GladysMarsyScreen extends StatelessWidget {
  GladysMarsyScreen({Key? key}) : super(key: key);

  GladysMarsyController gladysMarsyController =
      Get.put(GladysMarsyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: "Gladys R. / Marsy`s",
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: GridView.builder(
            itemCount: 2,
            itemBuilder: (contex, index) {
              return FederalCard(
                onTap: ()=>Get.to(gladysMarsyController.routes[index],arguments:gladysMarsyController.gladysMarsy[index] ),
                  text: gladysMarsyController.gladysMarsy[index]);
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 60,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
            ),
          ),
        ),
      ),
    );
  }
}
