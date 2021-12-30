import 'package:brainbook/core/theme/values/colors.dart';
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
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: linearColor),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          title: Text("Warrants"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                   "Search warrant",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
              ),
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
                  itemBuilder: (context,index){
                    return Column(
                      children: [

                        index == warratnsController.warrantLsit.length-1?Divider(height: 10,color: Colors.black,):Container(),
                        ListTile(
                          leading: Image.asset(
                            "assets/33.png",
                            height: 20,
                            color: fontColorDark,
                          ),
                          title: Transform.translate(
                            offset: Offset(-30, 10),
                            child: Text( warratnsController.warrantLsit[index],style:TextStyle(color:index == warratnsController.warrantLsit.length-1? fontColorDark:Colors.black, ) ),
                          ),
                        ),

                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
