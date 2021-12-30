import 'package:brainbook/core/theme/values/colors.dart';
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
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: linearColor),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          title: Text("Less Lethal"),
          centerTitle: true,
        ),
        backgroundColor: containerColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left: 14.0),
              child: Text(
                "Less Lethal",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 14.0),
              child: Text(
                "A less lethal may be issued upon any of the following grounds: ",
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: lessLethalController.lessLethalLsit.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: Image.asset(
                        "assets/33.png",
                        height: 20,
                        color: fontColorDark,
                      ),
                      title: Transform.translate(
                        offset: Offset(-30, 10),
                        child: Text( lessLethalController.lessLethalLsit[index],style:TextStyle(color:Colors.black, ) ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}