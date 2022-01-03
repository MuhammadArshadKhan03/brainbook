import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gang_slang_detail_controller.dart';

class GangSlangDetailScreen extends StatelessWidget {
  GangSlangDetailScreen({Key? key}) : super(key: key);

  GangDetailController gangDetailController = Get.put(GangDetailController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: MyAppBar(
          title: Get.arguments,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Image.asset(
                    favorite,
                    alignment: Alignment.bottomLeft,
                    height: 35,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: Get.arguments),
            const SizedBox(
              height: 20,
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   //physics: BouncingScrollPhysics(),
            //   itemCount: 2,
            // itemBuilder: (context,index){
            //   return Column(
            //     children: [
            //       index == gangDetailController.gangDetailListSubtitle.length-1?Divider(height: 1,color: Colors.black,):Container(),
            //       ListTile(
            //   minVerticalPadding: 20.0,
            //         title:Text(gangDetailController.gangDetailListtile[index],),
            //       subtitle: Padding(
            //         padding: const EdgeInsets.only(top: 18.0),
            //         child: Text(gangDetailController.gangDetailListSubtitle[index],style: TextStyle(color: fontColorDark),),
            //       ),
            //       ),
            //       index == gangDetailController.gangDetailListSubtitle.length-1?Divider(height: 1,color: Colors.black,):Container(),
            //
            //     ],
            //   );
            // })
            Padding(
              padding:  EdgeInsets.only(right: 180.0),
              child: Text("Common Usage",),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:  EdgeInsets.only(right: 180.0),
              child: Text(
                gangDetailController.gangDetailListSubtitle[0],
                style: TextStyle(color: fontColorDark),
              ),
            ), const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ), const SizedBox(
              height: 20,
            ),
             Padding(
               padding:  EdgeInsets.only(right: 180.0),
               child: Text("Street Meaning"),
             ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:  EdgeInsets.only(right: 15.0),
              child: Text(
                gangDetailController.gangDetailListSubtitle[1],
                style: TextStyle(color: fontColorDark),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   Text(
          //     gangDetailController.gangDetailList[0],
          //     style: TextStyle(color: fontColorDark),
          //   ),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   const Divider(
          //     height: 1,
          //     color: Colors.black,
          //   ),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   const Text("Street Meaning"),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   Text(
          //     gangDetailController.gangDetailList[1],
          //     style: TextStyle(color: fontColorDark),
          //   ),
          //   const SizedBox(
          //     height: 20,
          //   ),
          //   const Divider(
          //     height: 1,
          //     color: Colors.black,
          //   ),
          // ],
        ]
        ),
      ),
    );
  }
}
