import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/home_card.dart';
import 'package:brainbook/screens/translator/translator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorScreen extends StatelessWidget {
  TranslatorScreen({Key? key}) : super(key: key);
  TranslatorController translatorController = Get.put(TranslatorController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: const MyAppBar(
          title: "Translator",
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
                child: HeadingTextWidget(text: "Speak & Translate"),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: translatorController.SpeakList.length,
                  itemBuilder: (context, index) {
                    return HomeCard(
                      onTap: () => Get.to(translatorController.routes[index],
                          arguments: translatorController.SpeakList[index]),
                      text: translatorController.SpeakList[index],
                      imagePath: translatorController.SpeakImagesList[index],
                      isLock: index != 0,
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 65,
                    mainAxisSpacing: 5,
                    crossAxisCount: 2,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 1,
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: HeadingTextWidget(text: "Point & Translate"),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: translatorController.PointList.length,
                  itemBuilder: (context, index) {
                    return HomeCard(
                      onTap: () {},
                      text: translatorController.PointList[index],
                      imagePath: translatorController.PointImagesList[index],
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 65,
                    mainAxisSpacing: 5,
                    crossAxisCount: 2,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
