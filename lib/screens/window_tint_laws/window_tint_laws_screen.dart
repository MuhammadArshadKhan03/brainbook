import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'window_tint_laws_controller.dart';

class WindowTintLawsScreen extends StatelessWidget {
  WindowTintLawsScreen({Key? key}) : super(key: key);
  WindowTintLawsController windowTintLawsController = Get.put(WindowTintLawsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: "Window Tint Laws",),
        // backgroundColor: containerColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: HeadingTextWidget(text: "These are general procedures"),

              ),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  "Refer to your department policy regarding dead persons ",
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount:windowTintLawsController.windowTintLawsLsit.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context,index){
                    return ListViewText( text: windowTintLawsController.windowTintLawsLsit[index],);

                  }),
            ],
          ),
        ),
      ),
    );
  }
}