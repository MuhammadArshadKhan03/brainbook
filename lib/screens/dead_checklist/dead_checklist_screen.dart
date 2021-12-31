import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dead_checklist_controller.dart';

class DeadCheckListScreen extends StatelessWidget {
  DeadCheckListScreen({Key? key}) : super(key: key);

  DeadCheckListController deadCheckListController = Get.put(DeadCheckListController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: "Less Lethal",),
         backgroundColor: Colors.blue.shade200,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: HeadingTextWidget(text: "These are general procedures")
              ),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  "Refer to your department policy regarding dead persons. ",
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: deadCheckListController.deadCheckList.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context,index){
                    return ListViewText( text: deadCheckListController.deadCheckList[index],);

                  }),
            ],
          ),
        ),
      ),
    );
  }
}