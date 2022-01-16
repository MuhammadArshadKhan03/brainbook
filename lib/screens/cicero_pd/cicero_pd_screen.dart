import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/screens/cicero_pd/cicero_pd_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CiceroPDScreen extends GetView<CiceroPDController> {
  const CiceroPDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(
        title: "Cicero PD",
      ),
          backgroundColor: Colors.blue.shade200,
          body: Column(
            children: [
              SizedBox(height: 30,),
              GridView.builder(
                shrinkWrap: true,
                itemCount: controller.ciceroList.length,
                itemBuilder: (contex, index) {
                  return FederalCard(
                    text: controller.ciceroList[index],
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
    ),);
  }
}
