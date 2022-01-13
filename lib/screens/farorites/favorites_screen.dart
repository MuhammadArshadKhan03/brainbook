// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/delete_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/dash_board/dash_board_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favorites_controller.dart';

class FavoritesScreen extends GetView<FavoritesController> {
   FavoritesScreen({Key? key}) : super(key: key);

   //FavoritesController favoritesController = Get.put(FavoritesController());

   final bool fav = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: MyAppBar(
        //   title: "Favorites",
        // ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center(
            //   child: HeadingTextWidget(
            //     text: "You have no favorties!",
            //   ),
            // ),
            fav==false? Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20,
                ),
                HeadingTextWidget(text: "Today"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return DeleteCard(
                          text: controller.favListTitle[index],
                          onTapDelete: () {},
                          onTapCard: () {},
                          subtitile: Text(
                            controller.favListSubtitle[index],
                            style: TextStyle(color: fontColorLight),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                HeadingTextWidget(text: "Last Week"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return DeleteCard(
                          text: controller.favListTitle[index],
                          onTapDelete: () {},
                          onTapCard: () {},
                          subtitile: Text(
                            controller.favListSubtitle[index],
                            style: TextStyle(color: fontColorLight),
                          ),
                        );
                      }),
                )
              ],
            ):Center(
          child: HeadingTextWidget(
            text: "You have no favorties!",
          ),
            )],
        ),
      ),
    );
  }
}
