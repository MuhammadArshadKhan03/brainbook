

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/main/gang_slang/widgets/gang_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chp_offices_controller.dart';

class CHPOfficersScreen extends GetView<CHPOfficersController> {
  const CHPOfficersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "CHP Officers",
        ),
        backgroundColor: Colors.blue.shade200,
        body: SingleChildScrollView(
          child: Form(
            key: controller.globalKey,
            child: Column(
              children: [
                Container(
                  height: 80,
                  decoration: BoxDecoration(gradient: linearColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 15),
                    child: TextFormFieldWidget(
                      title: "Search",
                      controller: controller.search,
                      icon: Icon(Icons.search),
                    ),

                  ),
                ),
                ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(top: 20),
                  shrinkWrap: true,
                  itemCount: controller.cHPOfficersCardList.length,
                  itemBuilder: (context, index) {
                    return GangSlangListWidget(
                      onTap: ()
                      =>Get.toNamed(Routes.cHPOfficesDetailScreen,arguments: controller.cHPOfficersCardList[index]),
                      text: controller.cHPOfficersCardList[index],
                    );
                  },
                ),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
