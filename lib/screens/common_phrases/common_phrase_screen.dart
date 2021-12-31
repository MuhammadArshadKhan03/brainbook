import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common_phrase_controller.dart';

class CommonPhraseScreen extends StatelessWidget {
  CommonPhraseScreen({Key? key}) : super(key: key);

  CommonPhraseController commonPhraseController = Get.put(CommonPhraseController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: "French",
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Common phrases",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 25,),
              GridView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: commonPhraseController.title.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          // horizontalTitleGap: 30.0,
                          title: Text(
                            commonPhraseController.title[index].title,
                            style: TextStyle(fontSize: 12),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(bottom: 15.0, top: 10),
                            child: Text(
                              commonPhraseController.title[index].subTitle,
                              style:
                                  TextStyle(fontSize: 12, color: fontColorDark),
                            ),
                          ),
                          trailing: Container(
                              height: 33,
                              width: 33,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black38,
                                      spreadRadius: 0,
                                      blurRadius: 5),
                                ],
                                //image:const DecorationImage(image: AssetImage("assets/33.png"),fit: BoxFit.cover) ,
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: InkWell(
                                onTap: () => Get.toNamed(Routes.audioScreen,arguments: [commonPhraseController.title[index].title,commonPhraseController.title[index].subTitle],),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    play,
                                    height: 10,
                                  ),
                                ),
                                // Icon(
                                //   Icons.play_arrow,
                                //   size: 25,
                                //   color: Colors.blue,
                                // ),
                              )
                              //Image.asset("assets/33.png",),
                              ),
                        ),
                      ),
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
