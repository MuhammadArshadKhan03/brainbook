import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/screens/chicago_pd/chicago_pd_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChicagoPDScreen extends GetView<ChicagoPDController> {
  const ChicagoPDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(
        title: "Chicago PD",
      ),
          backgroundColor: Colors.blue.shade200,
          body: Column(
            children: [
              SizedBox(height: 20,),
              GridView.builder(
                shrinkWrap: true,
                itemCount: controller.chcagoPdList.length,
                itemBuilder: (contex, index) {
                  return FederalCard(
                    text: controller.chcagoPdList[index],
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
