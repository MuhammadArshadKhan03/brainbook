import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:brainbook/screens/less_lethal/less_lethal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LessLethal extends StatelessWidget {
  LessLethal({Key? key}) : super(key: key);
  LessLethalController lessLethalController = Get.put(LessLethalController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: "Less Lethal",),
        // backgroundColor: containerColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const SizedBox(height: 20,),
              HeadingTextWidget(text: "Less Lethal"),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  "A less lethal may be issued upon any of the following grounds: ",
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: lessLethalController.lessLethalLsit.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context,index){
                    return ListViewText( text: lessLethalController.lessLethalLsit[index],);

                  }),
            ],
          ),
        ),
      ),
    );
  }
}