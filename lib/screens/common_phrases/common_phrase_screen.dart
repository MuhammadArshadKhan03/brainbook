import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common_phrase_controller.dart';
import 'widgets/common_phrase_card.dart';

class CommonPhraseScreen extends StatelessWidget {
  CommonPhraseScreen({Key? key}) : super(key: key);

  CommonPhraseController commonPhraseController =
      Get.put(CommonPhraseController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: Get.arguments,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: HeadingTextWidget(text: "Common phrases")),
              const SizedBox(
                height: 25,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: commonPhraseController.title.length,
                  itemBuilder: (context, index) {
                    return CommonPhraseCard(
                      title: commonPhraseController.title[index].title,
                      subtitle: commonPhraseController.title[index].subTitle,
                      arguments: [
                        commonPhraseController.title[index].title,
                        commonPhraseController.title[index].subTitle,
                        Get.arguments,
                      ],
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 65,
                    mainAxisSpacing: 12,
                    crossAxisCount: 1,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
