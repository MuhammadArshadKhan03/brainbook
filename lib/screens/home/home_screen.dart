import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen_controller.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
       // backgroundColor: containerColor,
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount:homeController.home.length,
              itemBuilder: (context, index) {
                return HomeCard(
                  onTap: ()=>Get.to(homeController.routes[index]),
                  text: homeController.home[index].text,
                  imagePath: homeController.home[index].image,
                  isLock: index == 10,
                );
              },
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 60,
                mainAxisSpacing: 5,
                crossAxisCount: 2,
              )),
        ),
      ),
    );
  }
}



