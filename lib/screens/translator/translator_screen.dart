import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/home_card.dart';
import 'package:brainbook/screens/translator/translator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorScreen extends StatelessWidget {
   TranslatorScreen({Key? key}) : super(key: key);
  TranslatorController translatorController = Get.put(TranslatorController());

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: const MyAppBar(
          title: "Translator",
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Speak & Translate",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20,),
              GridView.builder(
                physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:translatorController.SpeakList.length,
                  itemBuilder: (context, index) {
                    return HomeCard(
                      onTap: ()=>Get.to(translatorController.routes[index]),
                      text: translatorController.SpeakList[index],
                      imagePath: translatorController.SpeakImagesList[index],
                      isLock: index != 0,
                    );
                  },
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 65,
                    mainAxisSpacing: 5,
                    crossAxisCount: 2,
                  )),
              SizedBox(height: 20,),
              Divider(height: 1,color: Colors.black,),
              SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Point & Translate",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20,),
              GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:translatorController.PointList.length,
                  itemBuilder: (context, index) {
                    return HomeCard(
                      onTap: (){},
                      text: translatorController.PointList[index],
                      imagePath: translatorController.PointImagesList[index],
                    );
                  },
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
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
