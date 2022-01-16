import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/screens/lake_country/lake_country_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LakeCountryScreen extends GetView<LakeCountryController> {
  const LakeCountryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Lake Country",
        ),
        backgroundColor: Colors.blue.shade200,
        body:  Column(
          children: [
            SizedBox(height: 30,),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.lakeCountryList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.lakeCountryList[index],
                  isLock: index==0,
                  // onTap: () => Get.toNamed(
                  //   controller.deptRoutes[index],
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
