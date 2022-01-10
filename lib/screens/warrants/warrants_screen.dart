import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:brainbook/screens/warrants/warrents_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Warrants extends StatelessWidget {
  Warrants({Key? key}) : super(key: key);
  WarratnsController warratnsController = Get.put(WarratnsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  MyAppBar(title: "Warrants",),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              HeadingTextWidget(text: "Search Warrants"),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  "A search warrat may be issued upon any of the \nfollowing grounds: ",
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: warratnsController.warrantLsit.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListViewText(
                     /// warratnsController: warratnsController,
                      text: warratnsController.warrantLsit[index],
                      textColor:index == warratnsController.warrantLsit.length-1? fontColorDark:Colors.black,
                        divider:index == warratnsController.warrantLsit.length-1?Divider(height: 10,color: Colors.black,):Container(),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}




