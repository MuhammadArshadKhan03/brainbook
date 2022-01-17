import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/screens/illinois/joliet_pd/joliet_pd_controller.dart';
import 'package:brainbook/screens/illinois/will_county/will_county_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JolietPDScreen extends GetView<JolietPDController> {
  const JolietPDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Dupage County",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          children: [
            SizedBox(height: 15,),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.jolietPDList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.jolietPDList[index],
                  isLock: index==0,
                  // onTap: () => Get.toNamed(
                  //   controller.napervilleList[index],
                  // ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 60,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
