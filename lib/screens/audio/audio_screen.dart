import 'dart:async';

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'audio_controller.dart';

class AudioScreen extends StatelessWidget {
  AudioScreen({Key? key}) : super(key: key);
  AudioController audioController = Get.put(AudioController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "French",
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "English",
                  style: TextStyle(fontSize: 14),
                ),
                GestureDetector(
                  onTap: (){
                   // print(Get.arguments.length );
                  },
                  child: Image.asset(
                    favorite,
                    height: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Text(
              Get.arguments[0],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "French",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 20,
            ),
             Text(
              Get.arguments[1],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Audio",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Container(
                  height: 32,
                  width: 33,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 0,
                          blurRadius: 5),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: InkWell(
                    onTap: () {
                       // audioController.speak(Get.arguments);
                        print(audioController.sliderValue.value );
                        Timer.periodic(
                          const Duration(milliseconds: 70),
                              (timer) {

                            if (audioController.sliderValue.value <= Get.arguments[1] -1) {
                              print("cond1  ${audioController.sliderValue.value}");
                              audioController.sliderValue.value =
                                  audioController.sliderValue.value + 1;
                              print("cond2  ${audioController.sliderValue.value}");
                              print("cond2  ${Get.arguments}");

                            } else {
                              print("cond3  ${audioController.sliderValue.value}");
                              timer.cancel();
                              audioController.sliderValue.value = 0.0;
                            }
                          },
                        );
                      },
                    child: Obx(()=>
                       Icon(
                                    audioController.sliderValue.value >= 1
                                    ? audioController.sliderValue.value <= 14
                                    ? Icons.pause
                                    : Icons.play_arrow
                                    : Icons.play_arrow,
                                size: 30,
                                color: fontColorDark,
                              ),
                    ),
                  ),
                ),
                title: Obx((){
                  return Slider(
                    value: audioController.sliderValue.value,
                    min: 0,
                     max: 10.0,
                     //Get.arguments.length.toDouble(),
                    //divisions: 10,
                    activeColor: fontColorLight,
                    inactiveColor: Colors.grey,
                    // label: 'Set volume value',
                    onChanged: (double newValue) {},
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()} dollars';
                    },
                  );
                }

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
